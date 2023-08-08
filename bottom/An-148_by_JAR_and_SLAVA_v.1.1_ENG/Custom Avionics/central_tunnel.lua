size = {1600, 1200}

-----------------
-- VARIABLES
-----------------
defineProperty("central_tunnel_subpanel", globalPropertyi("sim/an148/central_tunnel_subpanel"))

defineProperty("parkbrake", globalPropertyi("sim/flightmodel/controls/parkbrake"))


defineProperty("ENGN_N1_1", globalPropertyf("sim/flightmodel/engine/ENGN_N1_[0]"))
defineProperty("ENGN_N1_2", globalPropertyf("sim/flightmodel/engine/ENGN_N1_[1]"))
defineProperty("ENGN_N2_1", globalPropertyf("sim/flightmodel/engine/ENGN_N2_[0]"))
defineProperty("ENGN_N2_2", globalPropertyf("sim/flightmodel/engine/ENGN_N2_[1]"))
defineProperty("ENGN_EGT1", globalPropertyf("sim/flightmodel/engine/ENGN_EGT_c[0]"))
defineProperty("ENGN_EGT2", globalPropertyf("sim/flightmodel/engine/ENGN_EGT_c[1]"))

-----------------
-- IMAGES
-----------------
defineProperty("background", loadImage("central_tunnel.png"))
defineProperty("emer_brake", loadImage("emer_brake.png"))
defineProperty("digitsImage", loadImage("white_digit_strip.png", 0, 0, 16, 196))

components = {
---------------------------------------------------------------------
--background
texture{ 
	image = get(background),
	position = {0, 0, size[1], size[2]},
},
---------------------------------------------------------------------
--emer_brake
texture{ 
	image = get(emer_brake),
	position = {31, 1012, 134, 166},
},
---------------------------------------------------------------------
 
-----------------------------------------------------------------------------------------------------
--Цифра 1
switch {
	position = { 28, 323, 59, 59},   
	state = function()        
	return true    
end,
   
onMouseClick = function()      
	if get(parkbrake) ~= 0 then
		set(parkbrake, 0)
	else
		set(parkbrake, 1)
	end
return true;  
end   
}, 
-----------------------------------------------------------------------------------------------------
    -- N1_1 digits
    digitstape {
        position = { 730, 1056, 60, 30},
        image = digitsImage,
        digits = 3,
        showLeadingZeros = false,
		allowNonRound = true,
        value = function()
			return get(ENGN_N1_1)
		end,
    };
---------------------------------------------------------------------
    -- N1_2 digits
    digitstape {
        position = { 906, 1056, 60, 30},
        image = digitsImage,
        digits = 3,
        showLeadingZeros = false,
		allowNonRound = true,
        value = function()
			return get(ENGN_N1_2)
		end,
    };
---------------------------------------------------------------------
    -- N2_1 digits
    digitstape {
        position = { 730, 1024, 60, 30},
        image = digitsImage,
        digits = 3,
        showLeadingZeros = false,
		allowNonRound = true,
        value = function()
			return get(ENGN_N2_1)
		end,
    };
---------------------------------------------------------------------
    -- N2_2 digits
    digitstape {
        position = { 906, 1024, 60, 30},
        image = digitsImage,
        digits = 3,
        showLeadingZeros = false,
		allowNonRound = true,
        value = function()
			return get(ENGN_N2_2)
		end,
    };
---------------------------------------------------------------------
    -- EGT1 digits
    digitstape {
        position = { 730, 991, 60, 30},
        image = digitsImage,
        digits = 4,
        showLeadingZeros = false,
		allowNonRound = true,
        value = function()
			return get(ENGN_EGT1)
		end,
    };
---------------------------------------------------------------------
    -- EGT2 digits
    digitstape {
        position = { 906, 991, 60, 30},
        image = digitsImage,
        digits = 4,
        showLeadingZeros = false,
		allowNonRound = true,
        value = function()
			return get(ENGN_EGT2)
		end,
    };
---------------------------------------------------------------------
}