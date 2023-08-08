size = {832, 505}

-----------------
-- VARIABLES
-----------------
defineProperty("fuel_panel", globalPropertyi("sim/an148/fuel_panel"))

-----------------
-- IMAGES
-----------------
defineProperty("background", loadImage("fuel_panel.png"))

components = {
---------------------------------------------------------------------
--background
texture{ 
	image = get(background),
	position = {0, 0, size[1], size[2]},
},
---------------------------------------------------------------------
--Цифра 1
switch {
	position = { 530, 215, 59, 59},   
	state = function()        
	return true    
end,
   
onMouseClick = function()      

return true;  
end   
}, 
-----------------------------------------------------------------------------------------------------
}