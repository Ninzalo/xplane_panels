size = {1920, 1080}
-----------------
-- VARIABLES
-----------------
defineProperty("capt_subpanel", globalPropertyi("sim/an148/capt_subpanel"))
-----------------
-- local mfi_mnemo_eng = 0
-- local mfi_mnemo_fuel = 0
-- local mfi_mnemo_conf = 0
-- local mfi_mnemo_air = 0
-- local mfi_mnemo_elec = 0
-- local mfi_mnemo_hydr = 0
-- local mfi_mnemo_sys = 1
-- local mfi_mnemo_stat = 0
-- local mfi_mnemo_tcas = 0
-----------------
-- IMAGES
-----------------
defineProperty("background", loadImage("whitebackground.png"))
defineProperty("eng_mnemo", loadImage("eng_mnemo.png"))
defineProperty("green_sector", loadImage("green_sector.png"))

-- local switch_sound = loadSample('Custom Sounds/metal_switch.wav')
-- local switch_plastic = loadSample('Custom Sounds/plastic_switch.wav')
-- local switch_push = false
-- local vor1_btn = 1
-- local vor2_btn = 1
-- local adf1_btn = 0
-- local adf2_btn = 0

local function map(x, in_min, in_max, out_min, out_max)
    return (x - in_min) * (out_max - out_min) / (in_max - in_min) + out_min
end

components = {
------------------------------------------------------------------------------------------------------------------------------------------
--background
texture{ 
	image = get(background),
	position = {0, 0, size[1], size[2]},
},
needle{ 
	image = get(green_sector), --сектор левого двигателя
	position = {1398, 654, 108, 108},
	angle = function()
		return get(eng1_temp)
	end,
	visible = function()
		return get(mfi_mnemo_eng) == 1 and get(dc_bus) == 1
	end,
},
texture{ --ENG
	image = get(eng_mnemo),
	position = {1394, 162, 472, 621},
	visible = function()
		return get(mfi_mnemo_eng) == 1 and get(dc_bus) == 1
	end,
},

    -- eng1 digits
    digitstape {
        position = { 1447, 662, 35, 15},
        image = digitsImage,
        digits = 3,
        showLeadingZeros = false,
		allowNonRound = true,
        value = function()
			return map(get(engine_speed_rpm1), 0, 3867, 0, 100)
		end,
		valueEnabler = function()
			return get(mfi_mnemo_eng) == 1 and get(dc_bus) == 1
		end,
    };

------------------------------------------------------------------------------------------------------------------------------------------
}
