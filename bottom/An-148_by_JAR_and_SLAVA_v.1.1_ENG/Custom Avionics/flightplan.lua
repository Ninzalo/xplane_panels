size = {297, 420}

defineProperty("bg", loadImage("bkgrnd.png", 0, 0, 297, 420))
defineProperty("stroked1", loadImage("bkgrnd.png", 5, 463, 291, 13))
defineProperty("stroked2", loadImage("bkgrnd.png", 5, 476, 291, 13))
defineProperty("stroked3", loadImage("bkgrnd.png", 5, 489, 291, 13))


defineProperty("GPS_name", globalPropertys("sim/cockpit2/radios/indicators/gps_nav_id"))
defineProperty("times", globalPropertys("sim/time/zulu_time_sec"))

defineProperty("page2", globalPropertyi("sim/custom/xap/clpbrd_chapter5_pages"))

local font = loadFont('flightplan2.fnt')

local active = 1
local active2 = 0

local num = 0
local table1 = {}

local page = 0

local test = ""


local line1 = ""
local line2 = ""
local line3 = ""
local line4 = ""
local line5 = ""
local line6 = ""
local line7 = ""
local line8 = ""
local line9 = ""
local line10 = ""
local line11 = ""
local line12 = ""
local line13 = ""
local line14 = ""
local line15 = ""
local input = ""
local notLoaded = false

local currident = ""
local currtype = 99


-- handle keyboad input
function onKeyDown(comp, char, key)
--input flightplan name
if char == 8 then
local g = string.find(input, ' NOT FOUND')
if g then
input = string.sub(input, 1, g)
end
input = string.sub(input, 1, -2)
elseif char == 13 then
notLoaded = true
else 
input = string.format("%s%s",input, string.char(char))
end
 --print('key down', char, key)
 return true
end

-- handle keyboad input
function onKeyUp(comp, char, key)
return true
end


function readplan()
local filename = string.format("%s%s%s","Output/FMS plans/", input, ".fms")
active = 1
table1 = {}
currtype = 99
local lat2 = 0
local lon2 = 0
num = 0
local dist = 0

local types = 0
local ident = 0
local alt = 0
local lat1 = 0
local lon1 = 0
local file = io.open(filename, "r")
local length = 0
local ETA = 0

local tableline = ""

--local has_DME = 0
local a = 0
local b = 0

local timem = (get(times) / 60) + 15

-- if file exist - read it and fill the variables with new values
if file then
while true do
	local line = file:read("*line")
	if line == nil then break end
	a = string.find(line, '%d')
	if a ~= nil then
		types = tonumber(string.sub(line, a, a+1))
		a = string.find(line, '[%a%d]', a+2)
		if a ~= nil and types ~= 0 then
			b = string.find(line, " ", a+1)
			if b ~= nil then
			ident = string.sub(line, a, b-1)
				a = string.find(line, '%d', b)
					if a ~= nil then
					b = string.find(line, " ", a+1)
					alt = tonumber(string.sub(line, a, b-1))
					a = string.find(line, '%d', b)
						if string.sub(line, a-1, a-1) == "-" then
							a = a-1
						end
					b = string.find(line, " ", a+1)
					lat1 = tonumber(string.sub(line, a, b-1)) * math.pi / 180 

					a = string.find(line, '%d', b)
					if string.sub(line, a-1, a-1) == "-" then
						a = a-1
					end
					lon1 = tonumber(string.sub(line, a, -1)) * math.pi / -180 
				--all data has been read, now we calculate a bit
					num = num + 1
					if lat2 ~= 0 then
						dist = (2 * math.asin(math.sqrt((math.sin((lat1 - lat2) / 2)) ^ 2 + math.cos(lat1) * math.cos(lat2) * (math.sin((lon1 - lon2) / 2)) ^ 2)))
					end
					dist = string.format("%." .. (0 or 0) .. "f", dist * 10800 / math.pi)
				
					local speed = 250 + (alt / 1000 * 5)
					if alt > 30000 then
					speed = 475
					end
					speed = speed / 60
					ETA = tonumber(dist) / speed
				--	ETA = tonumber(dist) / 7.5
					timem = timem + ETA
					local ETAm =math.floor((timem / 60 - math.floor(timem / 60)) * 60)
					length = string.len(ETAm)
					if length < 2 then
						ETAm = string.format("%s%s", "0", ETAm)
					end

					ETA = string.format("%d:%s", math.floor(timem / 60), ETAm)

							--this function gives the string always the same length!
					length = string.len(dist)
					while length < 3 do
						dist = string.format("%s%s", " ", dist)
						length = length + 1
					end
					
					if types == 2 or types == 3 then
					name = 0
						local file = io.open("Resources/default data/earth_nav.dat", "r")
						if file then
							while true do
								local line2 = file:read("*line")
								if line2 == nil then break end
								if name ~= 0 then break end
								local c = 0
								c = string.find(line2, ident)
								if c == 54 then
									if tonumber(string.sub(line2, 1, 1)) == types then
										local lat3 = tonumber(string.sub(line2, 3, 14)) * math.pi / 180 
										local lon3 = tonumber(string.sub(line2, 16, 28)) * math.pi / -180 
										local dist3 = (2 * math.asin(math.sqrt((math.sin((lat1 - lat3) / 2)) ^ 2 + math.cos(lat1) * math.cos(lat3) * (math.sin((lon1 - lon3) / 2)) ^ 2)))
										dist3 = dist3 * 10.8 / math.pi * 1852
										if dist3 < 10 then
											name = string.sub(line2, 59, -1)
										end
									end
								end
							end
						end										
					end
					
					
					if types == 1 then
					types = "APT"
					name = 0
					local file = io.open("Resources/default scenery/default apt dat/Earth nav data/apt.dat", "r")
					if file then
						while true do
							local line2 = file:read("*line")
							if line2 == nil then break end
							if name ~= 0 then break end
							local c = 0
							c = string.find(line2, ident)
							if c == 16 then
								name = string.sub(line2, 21, -1)
							end
						end
					end
					
					elseif types == 2 then
					types = "NDB"					
					elseif types == 3 then
					types = "VOR"
					elseif types == 11 then
					types = "FIX"	
					name = ident
					end		
	
					length = string.len(ident)
					while length < 5 do
						ident = string.format("%s%s",ident, " ")
						length = length + 1
					end
					length = string.len(types)
					while length < 2 do
						types = string.format("%s%s",types, " ")
						length = length + 1
					end
					length = string.len(name)
					while length < 15 do
						name = string.format("%s%s",name, " ")
						length = length + 1
					end
					if length > 15 then
						name = string.sub(name, 1, 15)
					end	
					tableline = { types, ident, name, dist, ETA}
					table.insert(table1,tableline)
					lat2 = lat1
					lon2 = lon1
				end
			end
		end
	end
end


file:close()
else print ("flightplan couldn't be read")
input = string.format("%s %s",input, "NOT FOUND")
pagetext = ""
end
set(page2, 0)
active2 = 0
active = 1
display()
end


function display()
--this displays all the waypoints!
line1 = ""
line2 = ""
line3 = ""
line4 = ""
line5 = ""
line6 = ""
line7 = ""
line8 = ""
line9 = ""
line10 = ""
line11 = ""
line12 = ""
line13 = ""
line14 = ""
line15 = ""

if num >= page * 15 + 1 then
tableline = table1[page * 15 + 1]
line1 = string.format("%s %s %s %s %s", tableline[1], tableline[2], tableline[3], tableline[4], tableline[5])
end
if num >= page * 15 + 2 then
tableline = table1[page * 15 + 2]
line2 = string.format("%s %s %s %s %s", tableline[1], tableline[2], tableline[3], tableline[4], tableline[5])
end
if num >= page * 15 + 3 then
tableline = table1[page * 15 + 3]
line3 = string.format("%s %s %s %s %s", tableline[1], tableline[2], tableline[3], tableline[4], tableline[5])
end
if num >= page * 15 + 4 then
tableline = table1[page * 15 + 4]
line4 = string.format("%s %s %s %s %s", tableline[1], tableline[2], tableline[3], tableline[4], tableline[5])
end
if num >= page * 15 + 5 then
tableline = table1[page * 15 + 5]
line5 = string.format("%s %s %s %s %s", tableline[1], tableline[2], tableline[3], tableline[4], tableline[5])
end
if num >= page * 15 + 6 then
tableline = table1[page * 15 + 6]
line6 = string.format("%s %s %s %s %s", tableline[1], tableline[2], tableline[3], tableline[4], tableline[5])
end
if num >= page * 15 + 7 then
tableline = table1[page * 15 + 7]
line7 = string.format("%s %s %s %s %s", tableline[1], tableline[2], tableline[3], tableline[4], tableline[5])
end
if num >= page * 15 + 8 then
tableline = table1[page * 15 + 8]
line8 = string.format("%s %s %s %s %s", tableline[1], tableline[2], tableline[3], tableline[4], tableline[5])
end
if num >= page * 15 + 9 then
tableline = table1[page * 15 + 9]
line9 = string.format("%s %s %s %s %s", tableline[1], tableline[2], tableline[3], tableline[4], tableline[5])
end
if num >= page * 15 + 10 then
tableline = table1[page * 15 + 10]
line10 = string.format("%s %s %s %s %s", tableline[1], tableline[2], tableline[3], tableline[4], tableline[5])
end
if num >= page * 15 + 11 then
tableline = table1[page * 15 + 11]
line11 = string.format("%s %s %s %s %s", tableline[1], tableline[2], tableline[3], tableline[4], tableline[5])
end
if num >= page * 15 + 12 then
tableline = table1[page * 15 + 12]
line12 = string.format("%s %s %s %s %s", tableline[1], tableline[2], tableline[3], tableline[4], tableline[5])
end
if num >= page * 15 + 13 then
tableline = table1[page * 15 + 13]
line13 = string.format("%s %s %s %s %s", tableline[1], tableline[2], tableline[3], tableline[4], tableline[5])
end
if num >= page * 15 + 14 then
tableline = table1[page * 15 + 14]
line14 = string.format("%s %s %s %s %s", tableline[1], tableline[2], tableline[3], tableline[4], tableline[5])
end
if num >= page * 15 + 15 then
tableline = table1[page * 15 + 15]
line15 = string.format("%s %s %s %s %s", tableline[1], tableline[2], tableline[3], tableline[4], tableline[5])
end

end

--###############################################################################################


function update()
if notLoaded then
notLoaded = false
	readplan()
end

if page ~= get(page2) then
page = get(page2)
display()
end

--change to next waypoint
if active2 ~= active or currtype == 99 then
local currline = table1[active]
if currline ~= nil then
currtype = currline[1]

currident = currline[2]
a = string.find(currident, " ")

currident = string.sub(currident, 1, a-1)

active2 = active
else
currtype = 99
end
end

--GPS switches between waypoints
if currtype ~= 99 and get(GPS_name) ~= "" then
if get(GPS_name) ~= currident then
active = active + 1
end
end

--test = string.format("%s %s %d %d %s", currtype, currident, active, active, get(GPS_name))


end


	
components = {
	texture {
		image = get(bg),
		position = {0, 0, size[1], size[2]},

	},
--stroke

	texture {
		image = get(stroked1),
		position = {5, 360, 290, 8},
		visible = function()
		return active > page * 15 + 1
		end,
		},


	texture {
		image = get(stroked2),
		position = {5, 340, 290, 8},
		visible = function()
		return active > page * 15 + 2
		end,
		},


	texture {
		image = get(stroked3),
		position = {5, 320, 290, 8},
		visible = function()
		return active > page * 15 + 3
		end,
		},


	texture {
		image = get(stroked1),
		position = {5, 300, 290, 8},
		visible = function()
		return active > page * 15 + 4
		end,
		},


	texture {
		image = get(stroked2),
		position = {5, 280, 290, 8},
		visible = function()
		return active > page * 15 + 5
		end,
		},
	

	texture {
		image = get(stroked3),
		position = {5, 260, 290, 8},
		visible = function()
		return active > page * 15 + 6
		end,
		},


	texture {
		image = get(stroked1),
		position = {5, 240, 290, 8},
		visible = function()
		return active > page * 15 + 7
		end,
		},


	texture {
		image = get(stroked2),
		position = {5, 220, 290, 8},
		visible = function()
		return active > page * 15 + 8
		end,
		},
	

	texture {
		image = get(stroked3),
		position = {5, 200, 290, 8},
		visible = function()
		return active > page * 15 + 9
		end,
		},


	texture {
		image = get(stroked1),
		position = {5, 180, 290, 8},
		visible = function()
		return active > page * 15 + 10
		end,
		},
	

	texture {
		image = get(stroked2),
		position = {5, 160, 290, 8},
		visible = function()
		return active > page * 15 + 11
		end,
		},
	

	texture {
		image = get(stroked3),
		position = {5, 140, 290, 8},
		visible = function()
		return active > page * 15 + 12
		end,
		},


	texture {
		image = get(stroked1),
		position = {5, 120, 290, 8},
		visible = function()
		return active > page * 15 + 13
		end,
		},


	texture {
		image = get(stroked2),
		position = {5, 100, 290, 8},
		visible = function()
		return active > page * 15 + 14
		end,
		},


	texture {
		image = get(stroked3),
		position = {5, 80, 290, 8},
		visible = function()
		return active > page * 15 + 15
		end,
		},

		texture {
		image = get(stroked3),
		position = {0, 400, 90, 7},
		visible = function()
		return focused["value"]
		end,
		},		
	-- clickable area for closing main menu
	clickable {
		position = { size[1]-20, size[2]-20, 20, 20 },
		
		cursor = { 
			x = 16, 
			y = 32,  
			width = 16, 
			height = 16, 
			shape = loadImage("clickable.png")
		},  
		
		onMouseClick = function()
		set(fplan_subpanel, 0 )
		return true
		end
	},	

}


function draw()
drawAll(components)
drawText(font, 5, 360, line1, 1.0, 1.0, 1.0)
drawText(font, 5, 340, line2, 1.0, 1.0, 1.0)
drawText(font, 5, 320, line3, 1.0, 1.0, 1.0)
drawText(font, 5, 300, line4, 1.0, 1.0, 1.0)
drawText(font, 5, 280, line5, 1.0, 1.0, 1.0)
drawText(font, 5, 260, line6, 1.0, 1.0, 1.0)
drawText(font, 5, 240, line7, 1.0, 1.0, 1.0)
drawText(font, 5, 220, line8, 1.0, 1.0, 1.0)
drawText(font, 5, 200, line9, 1.0, 1.0, 1.0)
drawText(font, 5, 180, line10, 1.0, 1.0, 1.0)
drawText(font, 5, 160, line11, 1.0, 1.0, 1.0)
drawText(font, 5, 140, line12, 1.0, 1.0, 1.0)
drawText(font, 5, 120, line13, 1.0, 1.0, 1.0)
drawText(font, 5, 100, line14, 1.0, 1.0, 1.0)
drawText(font, 5, 80, line15, 1.0, 1.0, 1.0)


--drawText(font, 5, 30, test, 1.0, 1.0, 1.0)

drawText(font, 0, 405, input, 1.0, 1.0, 1.0)

end