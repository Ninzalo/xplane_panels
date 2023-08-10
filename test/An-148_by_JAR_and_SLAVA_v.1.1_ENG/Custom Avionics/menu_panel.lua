size = {32, 485}

----------------
-- SWITCHERS
----------------
defineProperty("main_menu_subpanel", globalPropertyi("sim/an148/main_menu_subpanel"))
defineProperty("mid_subpanel", globalPropertyi("sim/an148/mid_subpanel"))
defineProperty("capt_subpanel", globalPropertyi("sim/an148/capt_subpanel"))
defineProperty("fo_subpanel", globalPropertyi("sim/an148/fo_subpanel"))
defineProperty("central_tunnel_subpanel", globalPropertyi("sim/an148/central_tunnel_subpanel"))
defineProperty("fctl_subpanel", globalPropertyi("sim/an148/fctl_subpanel"))
defineProperty("overhead_subpanel", globalPropertyi("sim/an148/overhead"))
defineProperty("fuel_subpanel", globalPropertyi("sim/an148/fuel_panel"))

----------------
-- GET PANELS
----------------
defineProperty("panel_1") --main_menu_panel
defineProperty("panel_2") --overhead_subpanel
defineProperty("panel_3") --mid_panel
defineProperty("panel_4") --capt_subpanel
defineProperty("panel_5") --fo_subpanel
defineProperty("panel_6") --central_tunnel_subpanel
defineProperty("panel_7") --fctl_subpanel
defineProperty("panel_8") --fuel_panel

local p1 = get(panel_1)
local p2 = get(panel_2)
local p3 = get(panel_3)
local p4 = get(panel_4)
local p5 = get(panel_5)
local p6 = get(panel_6)
local p7 = get(panel_7)
local p8 = get(panel_8)
----------------
-- MENU BACKGROUND
----------------
defineProperty("background", loadImage("menu_panel.png"))


components = {
-----------------------------------------------------------------------------------------------------
-- background
textureLit {
	position = {0, 10, size[1], size[2] - 10},
	image = get(background),
},
-----------------------------------------------------------------------------------------------------
--MID PANEL  
switch {
	position = { 0, 440, 32, 20},
	state = function()
	return get(mid_subpanel) ~= 0
end,
  
onMouseClick = function()       
	if get(mid_subpanel) ~= 0 then
		set(mid_subpanel, 0)
	else
		set(mid_subpanel, 1)
		movePanelToTop(p3)
	end 
return true;
end   
}, 
-----------------------------------------------------------------------------------------------------
--CAPT PANEL
switch {
	position = { 0, 415, 32, 20},   
	state = function()        
	return get(capt_subpanel) ~= 0    
end,
   
onMouseClick = function()      
	if get(capt_subpanel) ~= 0 then  
		set(capt_subpanel, 0)
	else  
		set(capt_subpanel, 1)	
		movePanelToTop(p4)
	end  
return true;  
end   
}, 
-----------------------------------------------------------------------------------------------------
--FO PANEL 
switch {
	position = { 0, 395, 32, 18},
	state = function()
	return get(fo_subpanel) ~= 0
end,

onMouseClick = function()
	if get(fo_subpanel) ~= 0 then
		set(fo_subpanel, 0)
	else
		set(fo_subpanel, 1)
		movePanelToTop(p5)
	end 
return true;
end 
},
-----------------------------------------------------------------------------------------------------
--Central Tunnel PANEL 
switch { 
	position = { 0, 375, 32, 18},
	state = function()
	return get(central_tunnel_subpanel) ~= 0     
end,
        
onMouseClick = function() 
	if get(central_tunnel_subpanel) ~= 0 then      
		set(central_tunnel_subpanel, 0)
	else
		set(central_tunnel_subpanel, 1)
		movePanelToTop(p6)
	end 
return true;
end 
},
-----------------------------------------------------------------------------------------------------
--FCL PANEL 
switch {   
	position = { 0, 350, 32, 20}, 
	state = function()
	return get(fctl_subpanel) ~= 0
end,
       
onMouseClick = function()
	if get(fctl_subpanel) ~= 0 then
		set(fctl_subpanel, 0)
	else
		set(fctl_subpanel, 1)
		movePanelToTop(p7)
	end 
return true;
end 
},
-----------------------------------------------------------------------------------------------------
--OVERHEAD PANEL 
switch {   
	position = { 0, 470, 32, 20}, 
	state = function()
	return get(overhead_subpanel) ~= 0
end,
       
onMouseClick = function()
	if get(overhead_subpanel) ~= 0 then
		set(overhead_subpanel, 0)
	else
		set(overhead_subpanel, 1)
		movePanelToTop(p2)
	end 
return true;
end 
},
-----------------------------------------------------------------------------------------------------  
--fuel_panel
switch {
	position = { 0, 0, 32, 20},   
	state = function()        
	return get(fuel_subpanel) ~= 0    
end,
   
onMouseClick = function()      
	if get(fuel_subpanel) ~= 0 then  
		set(fuel_subpanel, 0)
	else  
		set(fuel_subpanel, 1)	
		movePanelToTop(p8)
	end  
return true;  
end   
}, 
-----------------------------------------------------------------------------------------------------

}