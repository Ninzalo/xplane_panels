size = {1600, 1200}

-----------------
-- VARIABLES
-----------------
defineProperty("fctl_subpanel", globalPropertyi("sim/an148/fctl_subpanel"))

defineProperty("adf1_left", globalPropertyi("sim/cockpit2/radios/actuators/adf1_left_frequency_hz"))
defineProperty("adf1_right", globalPropertyi("sim/cockpit2/radios/actuators/adf1_right_frequency_hz"))
defineProperty("adf2_left", globalPropertyi("sim/cockpit2/radios/actuators/adf2_left_frequency_hz"))
defineProperty("adf2_right", globalPropertyi("sim/cockpit2/radios/actuators/adf2_right_frequency_hz"))

defineProperty("dme_left", globalPropertyi("sim/cockpit2/radios/actuators/dme_left_frequency_hz"))
defineProperty("dme_right", globalPropertyi("sim/cockpit2/radios/actuators/dme_right_frequency_hz"))

defineProperty("com1_left", globalPropertyi("sim/cockpit2/radios/actuators/com1_frequency_hz_833"))
defineProperty("com1_right", globalPropertyi("sim/cockpit2/radios/actuators/com1_standby_frequency_hz_833"))
defineProperty("com2_left", globalPropertyi("sim/cockpit2/radios/actuators/com2_frequency_hz_833"))
defineProperty("com2_right", globalPropertyi("sim/cockpit2/radios/actuators/com2_standby_frequency_hz_833"))

defineProperty("nav1_left", globalPropertyi("sim/cockpit2/radios/actuators/nav1_frequency_hz"))
defineProperty("nav1_right", globalPropertyi("sim/cockpit2/radios/actuators/nav1_standby_frequency_hz"))
defineProperty("nav2_left", globalPropertyi("sim/cockpit2/radios/actuators/nav2_frequency_hz"))
defineProperty("nav2_right", globalPropertyi("sim/cockpit2/radios/actuators/nav2_standby_frequency_hz"))

defineProperty("transponder_code", globalPropertyi("sim/cockpit/radios/transponder_code"))

defineProperty("dc_bus", globalPropertyi("sim/an148/dc_bus"))

defineProperty("atis1", globalPropertyi("sim/an148/atis1"))
defineProperty("atis2", globalPropertyi("sim/an148/atis2"))

-----------------
-- IMAGES
-----------------
defineProperty("background", loadImage("fctl_panel.png"))

defineProperty("rudder_mid", loadImage("rudder_trim_mid.png"))
defineProperty("rudder_left", loadImage("rudder_trim_left.png"))
defineProperty("rudder_right", loadImage("rudder_trim_right.png"))
defineProperty("rotary_collins", loadImage("rotary_collins.png"))

defineProperty("digitsImage", loadImage("green_digits.png", 0, 0, 16, 196))
defineProperty("digitsImage2", loadImage("blue_digits.png", 0, 0, 16, 196))

defineProperty("CDU1", loadImage("CDU1.png"))
defineProperty("CDU2", loadImage("CDU2.png"))
defineProperty("CDU3", loadImage("CDU3.png"))

local rm = true
local rl = false
local rr = false

aileron_trim_to_zero = findCommand("sim/flight_controls/aileron_trim_center")
rudder_trim_to_zero = findCommand("sim/flight_controls/rudder_trim_center")

rudder_trim_left = findCommand("sim/flight_controls/rudder_trim_left")
rudder_trim_right = findCommand("sim/flight_controls/rudder_trim_right") 
aileron_trim_left = findCommand("sim/flight_controls/aileron_trim_left")
aileron_trim_right = findCommand("sim/flight_controls/aileron_trim_right")

adf1_left_ones_up = findCommand("sim/radios/actv_adf1_ones_up")  
adf1_right_ones_up = findCommand("sim/radios/stby_adf1_ones_up")  

local a = 0
local b = 0
local c = 0

local CDU_counter1 = 0
local CDU_counter2 = 0

local left_switch1 = 0
local right_switch1 = 0
local left_switch2 = 0
local right_switch2 = 0

components = {
---------------------------------------------------------------------
--background
texture{ 
	image = get(background),
	position = {0, 0, size[1], size[2]},
},
---------------------------------------------------------------------
texture{ --rudder_mid
	image = get(rudder_mid),
	position = {877, 524, 110, 151},
	visible = function()
		return rm
	end,
},
---------------------------------------------------------------------
texture{ --rudder_left
	image = get(rudder_left),
	position = {877, 524, 114, 149},
	visible = function()
		return rl
	end,
},
---------------------------------------------------------------------
texture{ --rudder_right
	image = get(rudder_right),
	position = {877, 524, 114, 149},
	visible = function()
		return rr
	end,
},
---------------------------------------------------------------------
--Обнуление
switch {
	position = {750, 540, 95, 95},
        state = function()
		return true
        end,
	
onMouseClick = function()
commandOnce(aileron_trim_to_zero)
commandOnce(rudder_trim_to_zero)
	return true;
end,
onMouseUp = function()
	return true;
end,	
},
---------------------------------------------------------------------
--РН Влево
switch {
	position = {865, 524, 50, 150},
    state = function()
		return true
    end,
	
onMouseClick = function()
	rm = false
	rr = false
	rl = true
	commandBegin(rudder_trim_left)
	return true;
end,

onMouseUp = function()
	rm = true
	rr = false
	rl = false
	commandEnd(rudder_trim_left)
	return true;
end,	
},
---------------------------------------------------------------------
--РН Вправо
switch {
	position = {965, 524, 50, 150},
    state = function()
		return true
    end,
	
onMouseClick = function()
	rm = false
	rr = true
	rl = false
	commandBegin(rudder_trim_right)
	return true;
end,

onMouseUp = function()
	rm = true
	rr = false
	rl = false
	commandEnd(rudder_trim_right)
	return true;
end,	
},
---------------------------------------------------------------------
--Элероны Влево
switch {
	position = {580, 538, 50, 150},
    state = function()
		return true
    end,
	
onMouseClick = function()
	commandBegin(aileron_trim_left)
	return true;
end,

onMouseUp = function()
	commandEnd(aileron_trim_left)
	return true;
end,	
},
---------------------------------------------------------------------
--Элероны Вправо
switch {
	position = {695, 538, 30, 150},
    state = function()
		return true
    end,
	
onMouseClick = function()
	commandBegin(aileron_trim_right)
	return true;
end,

onMouseUp = function()
	commandEnd(aileron_trim_right)
	return true;
end,	
},
---------------------------------------------------------------------


-------------------------------RTU LEFT--------------------------------------
texture{ --CDU1_left
	image = get(CDU1),
	position = {156, 735, 235, 237},
	visible = function()
		return CDU_counter1 == 0 and get(dc_bus) == 1
	end,
},
---------------------------------------------------------------------
texture{ --CDU2_left
	image = get(CDU2),
	position = {156, 735, 235, 237},
	visible = function()
		return CDU_counter1 == 1 and get(dc_bus) == 1
	end,
},
---------------------------------------------------------------------
texture{ --CDU3_left
	image = get(CDU3),
	position = {156, 735, 235, 237},
	visible = function()
		return CDU_counter1 == 2 and get(dc_bus) == 1
	end,
},
---------------------------------------------------------------------
texture{ --rotary_collins_l
	image = get(rotary_collins),
	position = {407, 712, 84, 84},
	visible = function()
		return true
	end,
},
---------------------------------------------------------------------
--Переключение кадров CDU left
switch {
	position = {97, 762, 50, 25},
    state = function()
		return true
    end,
	
onMouseClick = function()
	if CDU_counter1 < 2 then
		CDU_counter1 = CDU_counter1 + 1
	else
		CDU_counter1 = 0
	end
end,	
},
---------------------------------------------------------------------
--Левая верхняя кнопка выбора 
switch {
	position = {97, 914, 50, 25},
    state = function()
		return true
    end,
	
onMouseClick = function()
	right_switch1 = 0
	left_switch1 = 1
end,	
},
---------------------------------------------------------------------
--Левая средняя кнопка выбора 
switch {
	position = {97, 864, 50, 25},
    state = function()
		return true
    end,
	
onMouseClick = function()
	right_switch1 = 0
	left_switch1 = 2
end,	
},
---------------------------------------------------------------------
--Левая нижняя кнопка выбора 
switch {
	position = {97, 814, 50, 25},
    state = function()
		return true
    end,
	
onMouseClick = function()
	right_switch1 = 0
	left_switch1 = 3
end,	
},
---------------------------------------------------------------------
--Правая верхняя кнопка выбора 
switch {
	position = {422, 914, 50, 25},
    state = function()
		return true
    end,
	
onMouseClick = function()
	right_switch1 = 1
	left_switch1 = 0
end,	
},
---------------------------------------------------------------------
--Правая средняя кнопка выбора 
switch {
	position = {422, 864, 50, 25},
    state = function()
		return true
    end,
	
onMouseClick = function()
	right_switch1 = 2
	left_switch1 = 0
end,	
},
---------------------------------------------------------------------
--Правая нижняя кнопка выбора
switch {
	position = {422, 814, 25, 25},
    state = function()
		return true
    end,
	
onMouseClick = function()
	right_switch1 = 3
	left_switch1 = 0
end,	
},
---------------------------------------------------------------------
--Левая кнопка смены комплектов
switch {
	position = {461, 808, 32, 32},
    state = function()
		return true
	end,
	
onMouseClick = function()
	if CDU_counter1 == 0 then
		if right_switch1 == 1 or left_switch1 == 1 then
			a = get(com1_left)
			set(com1_left, get(com1_right))
			set(com1_right, a)
		end
		if right_switch1 == 2 or left_switch1 == 2 then
			b = get(nav1_left)
			set(nav1_left, get(nav1_right))
			set(nav1_right, b)
		end
	end
	if CDU_counter1 == 1 then
		if right_switch1 == 1 or left_switch1 == 1 then
			a = get(com2_left)
			set(com2_left, get(com2_right))
			set(com2_right, a)
		end
		if right_switch1 == 2 or left_switch1 == 2 then
			b = get(nav2_left)
			set(nav2_left, get(nav2_right))
			set(nav2_right, b)
		end
		if right_switch1 == 3 or left_switch1 == 3 then
			c = get(dme_left)
			set(dme_left, get(dme_right))
			set(dme_right, c)
		end
	end
	if CDU_counter1 == 2 then
		if right_switch1 == 1 or left_switch1 == 1 then
			a = get(atis1)
			set(atis1, get(atis2))
			set(atis2, a)
		end
		if right_switch1 == 2 or left_switch1 == 2 then
			b = get(adf1_left)
			set(adf1_left, get(adf1_right))
			set(adf1_right, b)
		end
		if right_switch1 == 3 or left_switch1 == 3 then
			c = get(adf2_left)
			set(adf2_left, get(adf2_right))
			set(adf2_right, c)
		end
	end
end,	
},
---------------------------------------------------------------------
--Добавление частоты левый пульт
switch {
	position = {465, 732, 50, 50},
	
onMouseClick = function()
------------------1 КАДР------------------------
	if right_switch1 == 1 and CDU_counter1 == 0 then
		set(com1_right, get(com1_right) + 25)
	end
	if left_switch1 == 1 and CDU_counter1 == 0 then
		set(com1_left, get(com1_left) + 25)
	end
	if right_switch1 == 2 and CDU_counter1 == 0 then
		set(nav1_right, get(nav1_right) + 1)
	end
	if left_switch1 == 2 and CDU_counter1 == 0 then
		set(nav1_left, get(nav1_left) + 1)
	end
	if right_switch1 == 3 and CDU_counter1 == 0 then
		set(transponder_code, get(transponder_code) + 1)
	end
	if left_switch1 == 3 and CDU_counter1 == 0 then
		set(transponder_code, get(transponder_code) + 1)
	end
	------------------1 КАДР------------------------

	------------------2 КАДР------------------------
	if right_switch1 == 1 and CDU_counter1 == 1 then
		set(com2_right, get(com2_right) + 25)
	end
	if left_switch1 == 1 and CDU_counter1 == 1 then
		set(com2_left, get(com2_left) + 25)
	end
	if right_switch1 == 2 and CDU_counter1 == 1 then
		set(nav2_right, get(nav2_right) + 1)
	end
	if left_switch1 == 2 and CDU_counter1 == 1 then
		set(nav2_left, get(nav2_left) + 1)
	end
	if right_switch1 == 3 and CDU_counter1 == 1 then
		set(dme_right, get(dme_right) + 1)
	end
	if left_switch1 == 3 and CDU_counter1 == 1 then
		set(dme_left, get(dme_left) + 1)
	end
	------------------2 КАДР------------------------
	
	------------------3 КАДР------------------------
	if left_switch1 == 1 and CDU_counter1 == 2 then
		set(atis1, get(atis1) + 25)
	end
	if right_switch1 == 1 and CDU_counter1 == 2 then
		set(atis2, get(atis2) + 25)
	end
	if right_switch1 == 2 and CDU_counter1 == 2 then
		set(adf1_right, get(adf1_right) + 1)
	end
	if left_switch1 == 2 and CDU_counter1 == 2 then
		set(adf1_left, get(adf1_left) + 1)
	end
	if right_switch1 == 3 and CDU_counter1 == 2 then
		set(adf2_right, get(adf2_right) + 1)
	end
	if left_switch1 == 3 and CDU_counter1 == 2 then
		set(adf2_left, get(adf2_left) + 1)
	end
	------------------3 КАДР------------------------
	return true;
end,
},
---------------------------------------------------------------------
--Убавление частоты левый пульт
switch {
	position = {385, 732, 50, 50},
	
onMouseClick = function()
	------------------1 КАДР------------------------
	if right_switch1 == 1 and CDU_counter1 == 0 then
		set(com1_right, get(com1_right) - 25)
	end
	if left_switch1 == 1 and CDU_counter1 == 0 then
		set(com1_left, get(com1_left) - 25)
	end
	if right_switch1 == 2 and CDU_counter1 == 0 then
		set(nav1_right, get(nav1_right) - 1)
	end
	if left_switch1 == 2 and CDU_counter1 == 0 then
		set(nav1_left, get(nav1_left) - 1)
	end
	if right_switch1 == 3 and CDU_counter1 == 0 then
		set(transponder_code, get(transponder_code) - 1)
	end
	if left_switch1 == 3 and CDU_counter1 == 0 then
		set(transponder_code, get(transponder_code) - 1)
	end
	------------------1 КАДР------------------------

	------------------2 КАДР------------------------
	if right_switch1 == 1 and CDU_counter1 == 1 then
		set(com2_right, get(com2_right) - 25)
	end
	if left_switch1 == 1 and CDU_counter1 == 1 then
		set(com2_left, get(com2_left) - 25)
	end
	if right_switch1 == 2 and CDU_counter1 == 1 then
		set(nav2_right, get(nav2_right) - 1)
	end
	if left_switch1 == 2 and CDU_counter1 == 1 then
		set(nav2_left, get(nav2_left) - 1)
	end
	if right_switch1 == 3 and CDU_counter1 == 1 then
		set(dme_right, get(dme_right) - 1)
	end
	if left_switch1 == 3 and CDU_counter1 == 1 then
		set(dme_left, get(dme_left) - 1)
	end
	------------------2 КАДР------------------------
	
	------------------3 КАДР------------------------
	if left_switch1 == 1 and CDU_counter1 == 2 then
		set(atis1, get(atis1) - 25)
	end
	if right_switch1 == 1 and CDU_counter1 == 2 then
		set(atis2, get(atis2) - 25)
	end
	if right_switch1 == 2 and CDU_counter1 == 2 then
		set(adf1_right, get(adf1_right) - 1)
	end
	if left_switch1 == 2 and CDU_counter1 == 2 then
		set(adf1_left, get(adf1_left) - 1)
	end
	if right_switch1 == 3 and CDU_counter1 == 2 then
		set(adf2_right, get(adf2_right) - 1)
	end
	if left_switch1 == 3 and CDU_counter1 == 2 then
		set(adf2_left, get(adf2_left) - 1)
	end
	------------------3 КАДР------------------------
	return true;
end,
},
---------------------------------------------------------------------
    -- Transponder code digits
    digitstape {
        position = { 177, 813, 60, 30},
        image = digitsImage,
        digits = 4,
        showLeadingZeros = false,
		allowNonRound = true,
        value = function()
			return get(transponder_code)
		end,
		visible = function()
			return CDU_counter1 == 0 and get(dc_bus) == 1
		end,
    };
---------------------------------------------------------------------
    -- ATIS digits
    digitstape {
        position = { 177, 915, 60, 30},
        image = digitsImage,
        digits = 5,
        showLeadingZeros = false,
		allowNonRound = true,
		fractional = 2,
        value = function()
			return get(atis1) / 1000
		end,
		visible = function()
			return CDU_counter1 == 2 and get(dc_bus) == 1
		end,
    };
---------------------------------------------------------------------
    -- ATIS digits
    digitstape {
        position = { 310, 915, 60, 30},
        image = digitsImage,
        digits = 5,
        showLeadingZeros = false,
		allowNonRound = true,
		fractional = 2,
        value = function()
			return get(atis2) / 1000
		end,
		visible = function()
			return CDU_counter1 == 2 and get(dc_bus) == 1
		end,
    };
---------------------------------------------------------------------
    -- ADF1_left digits
    digitstape {
        position = { 177, 865, 60, 30},
        image = digitsImage,
        digits = 5,
        showLeadingZeros = false,
		allowNonRound = true,
        value = function()
			return get(adf1_left)
		end,
		visible = function()
			return CDU_counter1 == 2 and get(dc_bus) == 1
		end,
    };
---------------------------------------------------------------------
    -- ADF1_right digits
    digitstape {
        position = { 310, 865, 60, 30},
        image = digitsImage2,
        digits = 5,
        showLeadingZeros = false,
		allowNonRound = true,
        value = function()
			return get(adf1_right)
		end,
		visible = function()
			return CDU_counter1 == 2 and get(dc_bus) == 1
		end,
    };
---------------------------------------------------------------------
    -- ADF2_left digits
    digitstape {
        position = { 177, 813, 60, 30},
        image = digitsImage,
        digits = 5,
        showLeadingZeros = false,
		allowNonRound = true,
        value = function()
			return get(adf2_left)
		end,
		visible = function()
			return CDU_counter1 == 2 and get(dc_bus) == 1
		end,
    };
---------------------------------------------------------------------
    -- ADF2_right digits
    digitstape {
        position = { 310, 813, 60, 30},
        image = digitsImage2,
        digits = 5,
        showLeadingZeros = false,
		allowNonRound = true,
        value = function()
			return get(adf2_right)
		end,
		visible = function()
			return CDU_counter1 == 2 and get(dc_bus) == 1
		end,
    };
---------------------------------------------------------------------
    -- DME_left digits
    digitstape {
        position = { 177, 813, 60, 30},
        image = digitsImage,
        digits = 5,
        showLeadingZeros = false,
		allowNonRound = true,
		fractional = 2,
        value = function()
			return get(dme_left) / 100
		end,
		visible = function()
			return CDU_counter1 == 1 and get(dc_bus) == 1
		end,
    };
---------------------------------------------------------------------
    -- DME_right digits
    digitstape {
        position = { 310, 813, 60, 30},
        image = digitsImage2,
        digits = 5,
        showLeadingZeros = false,
		allowNonRound = true,
		fractional = 2,
        value = function()
			return get(dme_right) / 100
		end,
		visible = function()
			return CDU_counter1 == 1 and get(dc_bus) == 1
		end,
    };
---------------------------------------------------------------------
    -- com1_left digits
    digitstape {
        position = { 177, 915, 60, 30},
        image = digitsImage,
        digits = 5,
        showLeadingZeros = false,
		allowNonRound = true,
		fractional = 2,
        value = function()
			return get(com1_left) / 1000
		end,
		visible = function()
			return CDU_counter1 == 0 and get(dc_bus) == 1
		end,
    };
---------------------------------------------------------------------
    -- com1_right digits
    digitstape {
        position = { 310, 915, 60, 30},
        image = digitsImage2,
        digits = 5,
        showLeadingZeros = false,
		allowNonRound = true,
		fractional = 2,
        value = function()
			return get(com1_right) / 1000
		end,
		visible = function()
			return CDU_counter1 == 0 and get(dc_bus) == 1
		end,
    };
---------------------------------------------------------------------
    -- nav1_left digits
    digitstape {
        position = { 177, 865, 60, 30},
        image = digitsImage,
        digits = 5,
        showLeadingZeros = false,
		allowNonRound = true,
		fractional = 2,
        value = function()
			return get(nav1_left) / 100
		end,
		visible = function()
			return CDU_counter1 == 0 and get(dc_bus) == 1
		end,
    };
---------------------------------------------------------------------
    -- nav1_right digits
    digitstape {
        position = { 310, 865, 60, 30},
        image = digitsImage2,
        digits = 5,
        showLeadingZeros = false,
		allowNonRound = true,
		fractional = 2,
        value = function()
			return get(nav1_right) / 100
		end,
		visible = function()
			return CDU_counter1 == 0 and get(dc_bus) == 1
		end,
    };
---------------------------------------------------------------------
    -- com2_left digits
    digitstape {
        position = { 177, 915, 60, 30},
        image = digitsImage,
        digits = 5,
        showLeadingZeros = false,
		allowNonRound = true,
		fractional = 2,
        value = function()
			return get(com2_left) / 1000
		end,
		visible = function()
			return CDU_counter1 == 1 and get(dc_bus) == 1
		end,
    };
---------------------------------------------------------------------
    -- com2_right digits
    digitstape {
        position = { 310, 915, 60, 30},
        image = digitsImage2,
        digits = 5,
        showLeadingZeros = false,
		allowNonRound = true,
		fractional = 2,
        value = function()
			return get(com2_right) / 1000
		end,
		visible = function()
			return CDU_counter1 == 1 and get(dc_bus) == 1
		end,
    };
---------------------------------------------------------------------
    -- nav2_left digits
    digitstape {
        position = { 177, 865, 60, 30},
        image = digitsImage,
        digits = 5,
        showLeadingZeros = false,
		allowNonRound = true,
		fractional = 2,
        value = function()
			return get(nav2_left) / 100
		end,
		visible = function()
			return CDU_counter1 == 1 and get(dc_bus) == 1
		end,
    };
---------------------------------------------------------------------
    -- nav2_right digits
    digitstape {
        position = { 310, 865, 60, 30},
        image = digitsImage2,
        digits = 5,
        showLeadingZeros = false,
		allowNonRound = true,
		fractional = 2,
        value = function()
			return get(nav2_right) / 100
		end,
		visible = function()
			return CDU_counter1 == 1 and get(dc_bus) == 1
		end,
    };
-------------------------------RTU LEFT--------------------------------------

-------------------------------RTU RIGHT--------------------------------------
--Переключение кадров CDU right
switch {
	position = {1112, 762, 50, 25},
    state = function()
		return true
    end,
	
onMouseClick = function()
	if CDU_counter2 < 2 then
		CDU_counter2 = CDU_counter2 + 1
	else
		CDU_counter2 = 0
	end
end,	
},
---------------------------------------------------------------------
--Правая кнопка смены комплектов
switch {
	position = {1475, 808, 32, 32},
    state = function()
		return true
	end,
	
onMouseClick = function()
	if CDU_counter2 == 0 then
		if right_switch2 == 1 or left_switch2 == 1 then
			a = get(com1_left)
			set(com1_left, get(com1_right))
			set(com1_right, a)
		end
		if right_switch2 == 2 or left_switch2 == 2 then
			b = get(nav1_left)
			set(nav1_left, get(nav1_right))
			set(nav1_right, b)
		end
	end
	if CDU_counter2 == 1 then
		if right_switch2 == 1 or left_switch2 == 1 then
			a = get(com2_left)
			set(com2_left, get(com2_right))
			set(com2_right, a)
		end
		if right_switch2 == 2 or left_switch2 == 2 then
			b = get(nav2_left)
			set(nav2_left, get(nav2_right))
			set(nav2_right, b)
		end
		if right_switch2 == 3 or left_switch2 == 3 then
			c = get(dme_left)
			set(dme_left, get(dme_right))
			set(dme_right, c)
		end
	end
	if CDU_counter2 == 2 then
		if right_switch2 == 1 or left_switch2 == 1 then
			a = get(atis1)
			set(atis1, get(atis2))
			set(atis2, a)
		end
		if right_switch2 == 2 or left_switch2 == 2 then
			b = get(adf1_left)
			set(adf1_left, get(adf1_right))
			set(adf1_right, b)
		end
		if right_switch2 == 3 or left_switch2 == 3 then
			c = get(adf2_left)
			set(adf2_left, get(adf2_right))
			set(adf2_right, c)
		end
	end
end,	
},
---------------------------------------------------------------------
--Добавление частоты правый пульт
switch {
	position = {1480, 732, 50, 50},
	
onMouseClick = function()
------------------1 КАДР------------------------
	if right_switch2 == 1 and CDU_counter2 == 0 then
		set(com1_right, get(com1_right) + 25)
	end
	if left_switch2 == 1 and CDU_counter2 == 0 then
		set(com1_left, get(com1_left) + 25)
	end
	if right_switch2 == 2 and CDU_counter2 == 0 then
		set(nav1_right, get(nav1_right) + 1)
	end
	if left_switch2 == 2 and CDU_counter2 == 0 then
		set(nav1_left, get(nav1_left) + 1)
	end
	if right_switch2 == 3 and CDU_counter2 == 0 then
		set(transponder_code, get(transponder_code) + 1)
	end
	if left_switch2 == 3 and CDU_counter2 == 0 then
		set(transponder_code, get(transponder_code) + 1)
	end
	------------------1 КАДР------------------------

	------------------2 КАДР------------------------
	if right_switch2 == 1 and CDU_counter2 == 1 then
		set(com2_right, get(com2_right) + 25)
	end
	if left_switch2 == 1 and CDU_counter2 == 1 then
		set(com2_left, get(com2_left) + 25)
	end
	if right_switch2 == 2 and CDU_counter2 == 1 then
		set(nav2_right, get(nav2_right) + 1)
	end
	if left_switch2 == 2 and CDU_counter2 == 1 then
		set(nav2_left, get(nav2_left) + 1)
	end
	if right_switch2 == 3 and CDU_counter2 == 1 then
		set(dme_right, get(dme_right) + 1)
	end
	if left_switch2 == 3 and CDU_counter2 == 1 then
		set(dme_left, get(dme_left) + 1)
	end
	------------------2 КАДР------------------------
	
	------------------3 КАДР------------------------
	if left_switch2 == 1 and CDU_counter2 == 2 then
		set(atis1, get(atis1) + 25)
	end
	if right_switch2 == 1 and CDU_counter2 == 2 then
		set(atis2, get(atis2) + 25)
	end
	if right_switch2 == 2 and CDU_counter2 == 2 then
		set(adf1_right, get(adf1_right) + 1)
	end
	if left_switch2 == 2 and CDU_counter2 == 2 then
		set(adf1_left, get(adf1_left) + 1)
	end
	if right_switch2 == 3 and CDU_counter2 == 2 then
		set(adf2_right, get(adf2_right) + 1)
	end
	if left_switch2 == 3 and CDU_counter2 == 2 then
		set(adf2_left, get(adf2_left) + 1)
	end
	------------------3 КАДР------------------------
	return true;
end,
},
---------------------------------------------------------------------
--Убавление частоты правый пульт
switch {
	position = {1400, 732, 50, 50},
	
onMouseClick = function()
	------------------1 КАДР------------------------
	if right_switch2 == 1 and CDU_counter2 == 0 then
		set(com1_right, get(com1_right) - 25)
	end
	if left_switch2 == 1 and CDU_counter2 == 0 then
		set(com1_left, get(com1_left) - 25)
	end
	if right_switch2 == 2 and CDU_counter2 == 0 then
		set(nav1_right, get(nav1_right) - 1)
	end
	if left_switch2 == 2 and CDU_counter2 == 0 then
		set(nav1_left, get(nav1_left) - 1)
	end
	if right_switch2 == 3 and CDU_counter2 == 0 then
		set(transponder_code, get(transponder_code) - 1)
	end
	if left_switch2 == 3 and CDU_counter2 == 0 then
		set(transponder_code, get(transponder_code) - 1)
	end
	------------------1 КАДР------------------------

	------------------2 КАДР------------------------
	if right_switch2 == 1 and CDU_counter2 == 1 then
		set(com2_right, get(com2_right) - 25)
	end
	if left_switch2 == 1 and CDU_counter2 == 1 then
		set(com2_left, get(com2_left) - 25)
	end
	if right_switch2 == 2 and CDU_counter2 == 1 then
		set(nav2_right, get(nav2_right) - 1)
	end
	if left_switch2 == 2 and CDU_counter2 == 1 then
		set(nav2_left, get(nav2_left) - 1)
	end
	if right_switch2 == 3 and CDU_counter2 == 1 then
		set(dme_right, get(dme_right) - 1)
	end
	if left_switch2 == 3 and CDU_counter2 == 1 then
		set(dme_left, get(dme_left) - 1)
	end
	------------------2 КАДР------------------------
	
	------------------3 КАДР------------------------
	if left_switch2 == 1 and CDU_counter2 == 2 then
		set(atis1, get(atis1) - 25)
	end
	if right_switch2 == 1 and CDU_counter2 == 2 then
		set(atis2, get(atis2) - 25)
	end
	if right_switch2 == 2 and CDU_counter2 == 2 then
		set(adf1_right, get(adf1_right) - 1)
	end
	if left_switch2 == 2 and CDU_counter2 == 2 then
		set(adf1_left, get(adf1_left) - 1)
	end
	if right_switch2 == 3 and CDU_counter2 == 2 then
		set(adf2_right, get(adf2_right) - 1)
	end
	if left_switch2 == 3 and CDU_counter2 == 2 then
		set(adf2_left, get(adf2_left) - 1)
	end
	------------------3 КАДР------------------------
	return true;
end,
},
---------------------------------------------------------------------
texture{ --CDU1_right
	image = get(CDU1),
	position = {1171, 735, 235, 237},
	visible = function()
		return CDU_counter2 == 0 and get(dc_bus) == 1
	end,
},
---------------------------------------------------------------------
texture{ --CDU2_right
	image = get(CDU2),
	position = {1171, 735, 235, 237},
	visible = function()
		return CDU_counter2 == 1 and get(dc_bus) == 1
	end,
},
---------------------------------------------------------------------
texture{ --CDU3_right
	image = get(CDU3),
	position = {1171, 735, 235, 237},
	visible = function()
		return CDU_counter2== 2 and get(dc_bus) == 1
	end,
},
---------------------------------------------------------------------
texture{ --rotary_collins_r
	image = get(rotary_collins),
	position = {1422, 712, 84, 84},
	visible = function()
		return true
	end,
},
---------------------------------------------------------------------
--Левая верхняя кнопка выбора 
switch {
	position = {1112, 914, 50, 25},
    state = function()
		return true
    end,
	
onMouseClick = function()
	right_switch2 = 0
	left_switch2 = 1
end,	
},
---------------------------------------------------------------------
--Левая средняя кнопка выбора 
switch {
	position = {1112, 864, 50, 25},
    state = function()
		return true
    end,
	
onMouseClick = function()
	right_switch2 = 0
	left_switch2 = 2
end,	
},
---------------------------------------------------------------------
--Левая нижняя кнопка выбора 
switch {
	position = {1112, 814, 50, 25},
    state = function()
		return true
    end,
	
onMouseClick = function()
	right_switch2 = 0
	left_switch2 = 3
end,	
},
---------------------------------------------------------------------
--Правая верхняя кнопка выбора 
switch {
	position = {1437, 914, 50, 25},
    state = function()
		return true
    end,
	
onMouseClick = function()
	right_switch2 = 1
	left_switch2 = 0
end,	
},
---------------------------------------------------------------------
--Правая средняя кнопка выбора 
switch {
	position = {1437, 864, 50, 25},
    state = function()
		return true
    end,
	
onMouseClick = function()
	right_switch2 = 2
	left_switch2 = 0
end,	
},
---------------------------------------------------------------------
--Правая нижняя кнопка выбора
switch {
	position = {1437, 814, 25, 25},
    state = function()
		return true
    end,
	
onMouseClick = function()
	right_switch2 = 3
	left_switch2 = 0
end,	
},
---------------------------------------------------------------------
    -- Transponder code digits
    digitstape {
        position = { 1192, 813, 60, 30},
        image = digitsImage,
        digits = 4,
        showLeadingZeros = false,
		allowNonRound = true,
        value = function()
			return get(transponder_code)
		end,
		visible = function()
			return CDU_counter2 == 0 and get(dc_bus) == 1
		end,
    };
---------------------------------------------------------------------
    -- ATIS digits
    digitstape {
        position = { 1192, 915, 60, 30},
        image = digitsImage,
        digits = 5,
        showLeadingZeros = false,
		allowNonRound = true,
		fractional = 2,
        value = function()
			return get(atis1) / 1000
		end,
		visible = function()
			return CDU_counter2 == 2 and get(dc_bus) == 1
		end,
    };
---------------------------------------------------------------------
    -- ATIS digits
    digitstape {
        position = { 1325, 915, 60, 30},
        image = digitsImage,
        digits = 5,
        showLeadingZeros = false,
		allowNonRound = true,
		fractional = 2,
        value = function()
			return get(atis2) / 1000
		end,
		visible = function()
			return CDU_counter2 == 2 and get(dc_bus) == 1
		end,
    };
---------------------------------------------------------------------
    -- ADF1_left digits
    digitstape {
        position = { 1192, 865, 60, 30},
        image = digitsImage,
        digits = 5,
        showLeadingZeros = false,
		allowNonRound = true,
        value = function()
			return get(adf1_left)
		end,
		visible = function()
			return CDU_counter2 == 2 and get(dc_bus) == 1
		end,
    };
---------------------------------------------------------------------
    -- ADF1_right digits
    digitstape {
        position = { 1325, 865, 60, 30},
        image = digitsImage2,
        digits = 5,
        showLeadingZeros = false,
		allowNonRound = true,
        value = function()
			return get(adf1_right)
		end,
		visible = function()
			return CDU_counter2 == 2 and get(dc_bus) == 1
		end,
    };
---------------------------------------------------------------------
    -- ADF2_left digits
    digitstape {
        position = { 1192, 813, 60, 30},
        image = digitsImage,
        digits = 5,
        showLeadingZeros = false,
		allowNonRound = true,
        value = function()
			return get(adf2_left)
		end,
		visible = function()
			return CDU_counter2 == 2 and get(dc_bus) == 1
		end,
    };
---------------------------------------------------------------------
    -- ADF2_right digits
    digitstape {
        position = { 1325, 813, 60, 30},
        image = digitsImage2,
        digits = 5,
        showLeadingZeros = false,
		allowNonRound = true,
        value = function()
			return get(adf2_right)
		end,
		visible = function()
			return CDU_counter2 == 2 and get(dc_bus) == 1
		end,
    };
---------------------------------------------------------------------
    -- DME_left digits
    digitstape {
        position = { 1192, 813, 60, 30},
        image = digitsImage,
        digits = 5,
        showLeadingZeros = false,
		allowNonRound = true,
		fractional = 2,
        value = function()
			return get(dme_left) / 100
		end,
		visible = function()
			return CDU_counter2 == 1 and get(dc_bus) == 1
		end,
    };
---------------------------------------------------------------------
    -- DME_right digits
    digitstape {
        position = { 1325, 813, 60, 30},
        image = digitsImage2,
        digits = 5,
        showLeadingZeros = false,
		allowNonRound = true,
		fractional = 2,
        value = function()
			return get(dme_right) / 100
		end,
		visible = function()
			return CDU_counter2 == 1 and get(dc_bus) == 1
		end,
    };
---------------------------------------------------------------------
    -- com1_left digits
    digitstape {
        position = { 1192, 915, 60, 30},
        image = digitsImage,
        digits = 5,
        showLeadingZeros = false,
		allowNonRound = true,
		fractional = 2,
        value = function()
			return get(com1_left) / 1000
		end,
		visible = function()
			return CDU_counter2 == 0 and get(dc_bus) == 1
		end,
    };
---------------------------------------------------------------------
    -- com1_right digits
    digitstape {
        position = { 1325, 915, 60, 30},
        image = digitsImage2,
        digits = 5,
        showLeadingZeros = false,
		allowNonRound = true,
		fractional = 2,
        value = function()
			return get(com1_right) / 1000
		end,
		visible = function()
			return CDU_counter2 == 0 and get(dc_bus) == 1
		end,
    };
---------------------------------------------------------------------
    -- nav1_left digits
    digitstape {
        position = { 1192, 865, 60, 30},
        image = digitsImage,
        digits = 5,
        showLeadingZeros = false,
		allowNonRound = true,
		fractional = 2,
        value = function()
			return get(nav1_left) / 100
		end,
		visible = function()
			return CDU_counter2 == 0 and get(dc_bus) == 1
		end,
    };
---------------------------------------------------------------------
    -- nav1_right digits
    digitstape {
        position = { 1325, 865, 60, 30},
        image = digitsImage2,
        digits = 5,
        showLeadingZeros = false,
		allowNonRound = true,
		fractional = 2,
        value = function()
			return get(nav1_right) / 100
		end,
		visible = function()
			return CDU_counter2 == 0 and get(dc_bus) == 1
		end,
    };
---------------------------------------------------------------------
    -- com2_left digits
    digitstape {
        position = { 1192, 915, 60, 30},
        image = digitsImage,
        digits = 5,
        showLeadingZeros = false,
		allowNonRound = true,
		fractional = 2,
        value = function()
			return get(com2_left) / 1000
		end,
		visible = function()
			return CDU_counter2 == 1 and get(dc_bus) == 1
		end,
    };
---------------------------------------------------------------------
    -- com2_right digits
    digitstape {
        position = { 1325, 915, 60, 30},
        image = digitsImage2,
        digits = 5,
        showLeadingZeros = false,
		allowNonRound = true,
		fractional = 2,
        value = function()
			return get(com2_right) / 1000
		end,
		visible = function()
			return CDU_counter2 == 1 and get(dc_bus) == 1
		end,
    };
---------------------------------------------------------------------
    -- nav2_left digits
    digitstape {
        position = { 1192, 865, 60, 30},
        image = digitsImage,
        digits = 5,
        showLeadingZeros = false,
		allowNonRound = true,
		fractional = 2,
        value = function()
			return get(nav2_left) / 100
		end,
		visible = function()
			return CDU_counter2 == 1 and get(dc_bus) == 1
		end,
    };
---------------------------------------------------------------------
    -- nav2_right digits
    digitstape {
        position = { 1325, 865, 60, 30},
        image = digitsImage2,
        digits = 5,
        showLeadingZeros = false,
		allowNonRound = true,
		fractional = 2,
        value = function()
			return get(nav2_right) / 100
		end,
		visible = function()
			return CDU_counter2 == 1 and get(dc_bus) == 1
		end,
    };
-------------------------------RTU RIGHT--------------------------------------
}