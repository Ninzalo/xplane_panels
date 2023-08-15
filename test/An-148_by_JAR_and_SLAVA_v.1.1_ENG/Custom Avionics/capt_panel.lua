size = {1920, 1200}
-----------------
-- VARIABLES
-----------------
defineProperty("capt_subpanel", globalPropertyi("sim/an148/capt_subpanel"))
-- defineProperty("gpu_on_power", globalPropertyf("sim/cockpit/electrical/gpu_on"))
-- defineProperty("inverter_on_1", globalPropertyi("sim/cockpit2/electrical/inverter_on[0]"))
-- defineProperty("inverter_on_2", globalPropertyi("sim/cockpit2/electrical/inverter_on[1]"))
-- defineProperty("inverter_on_3", globalPropertyi("sim/an148/inverter_on_3"))
-- defineProperty("generator_on_1", globalPropertyi("sim/cockpit2/electrical/generator_on[0]"))
-- defineProperty("generator_on_2", globalPropertyi("sim/cockpit2/electrical/generator_on[1]"))
-- defineProperty("generator_on_apu", globalPropertyi("sim/cockpit2/electrical/APU_generator_on"))
-- defineProperty("battery_on_1", globalPropertyi("sim/cockpit2/electrical/battery_on[0]"))
-- defineProperty("battery_on_2", globalPropertyi("sim/cockpit2/electrical/battery_on[1]"))
-- defineProperty("battery_on_3", globalPropertyi("sim/cockpit2/electrical/battery_on[2]"))

-- Самолёт под током
defineProperty("dc_bus", globalPropertyi("sim/an148/dc_bus"))
-- Температура первого и второго двигателей (сектор)
defineProperty("eng1_temp", globalPropertyf("sim/an148/eng1_temp"))
defineProperty("eng2_temp", globalPropertyf("sim/an148/eng2_temp"))
-- Температура первого и второго двигателей (цифры)
defineProperty("ENGN_EGT_c1", globalPropertyf("sim/flightmodel/engine/ENGN_EGT_c[0]"))
defineProperty("ENGN_EGT_c2", globalPropertyf("sim/flightmodel/engine/ENGN_EGT_c[1]"))
-- Давление масла первого и второго двигателей (сектор)
defineProperty("oil_pressure1", globalPropertyf("sim/cockpit2/engine/indicators/oil_pressure_psi[0]"))
defineProperty("oil_pressure2", globalPropertyf("sim/cockpit2/engine/indicators/oil_pressure_psi[1]"))
-----------------
local mfi_mnemo_eng = 0
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
defineProperty("background", loadImage("capt_panel_new.png"))
defineProperty("rotary_small", loadImage("rotary_small.png"))
defineProperty("yellow_light", loadImage("yellow_light.png"))
defineProperty("green_sector", loadImage("green_sector.png"))
defineProperty("eng_mnemo", loadImage("eng_mnemo.png"))
defineProperty("digitsImage", loadImage("white_digit_strip.png", 0, 0, 16, 196))
-- local switch_sound = loadSample('Custom Sounds/metal_switch.wav')
-- local switch_plastic = loadSample('Custom Sounds/plastic_switch.wav')
local switch_push = false
-- local vor1_btn = 1
-- local vor2_btn = 1
-- local adf1_btn = 0
-- local adf2_btn = 0

local function map(x, in_min, in_max, out_min, out_max)
    return (x - in_min) * (out_max - out_min) / (in_max - in_min) + out_min
end

local function coords(x_center, y_center, width, height)
  return {
    x_center - (width / 2),
    size[2] - y_center - (height / 2),
    width,
    height
  }
end
local function coords_converter(x_old, y_old, width, height)
  return coords(
    x_old - 2.5 + (width / 2),
    size[2] - y_old - 120 - (height / 2),
    width,
    height
  )
end
components = {
------------------------------------------------------------------------------
--background
texture{ 
	image = get(background),
	position = {0, 0, size[1], size[2]},
},

--ДВИГ

---- Индикация над кнопкой "ДВИГ"
texture{
	image = get(yellow_light),
	position = coords(1370, 131, 29, 8),
	visible = function()
    return get(mfi_mnemo_eng) == 1 and get(dc_bus) == 1
	end,
},

---- Сектор температуры первого двигателя
needle{ 
	image = get(green_sector),
	-- position = {1398, 654, 108, 108},
	position = coords_converter(1398, 654, 108, 108),
	angle = function()
		return get(eng1_temp)
	end,
	visible = function()
		return get(mfi_mnemo_eng) == 1 and get(dc_bus) == 1
	end,
},

---- Сектор температуры второго двигателя
needle{ 
	image = get(green_sector),
	position = coords_converter(1511, 654, 108, 108),
	angle = function()
		return get(eng2_temp)
	end,
	visible = function()
		return get(mfi_mnemo_eng) == 1 and get(dc_bus) == 1
	end,
},

---- Сектор давления масла первого двигателя
needle{
	image = get(green_sector),
	position = coords_converter(1402, 374, 68, 68),
	angle = function()
		return map(get(oil_pressure1), 0, 5, 0, 180)
	end,
	visible = function()
		return get(mfi_mnemo_eng) == 1 and get(dc_bus) == 1
	end,
},

---- Сектор давления масла второго двигателя
needle{
	image = get(green_sector),
	position = coords_converter(1529, 374, 68, 68),
	angle = function()
		return map(get(oil_pressure2), 0, 5, 0, 180)
	end,
	visible = function()
		return get(mfi_mnemo_eng) == 1 and get(dc_bus) == 1
	end,
},
---- Дисплей ДВИГ
texture{
	image = get(eng_mnemo),
	position = coords(1626, 607, 472, 621),
	visible = function()
    return get(mfi_mnemo_eng) == 1 and get(dc_bus) == 1
	end,
},

---- Температура первого двигателя
digitstape {
    -- position = { 1404, 688, 35, 15},
    position = coords_converter(1404, 688, 32, 13.5),
    image = digitsImage,
    digits = 3,
    showLeadingZeros = false,
    allowNonRound = true,
    value = function()
      return get(ENGN_EGT_c1)
    end,
    valueEnabler = function()
      return get(mfi_mnemo_eng) == 1 and get(dc_bus) == 1
    end,
};

---- Температура второго двигателя
digitstape {
    -- position = { 1522, 688, 34, 15},
    position = coords_converter(1522, 688, 32, 13.5),
    image = digitsImage,
    digits = 3,
    showLeadingZeros = false,
    allowNonRound = true,
    value = function()
      return get(ENGN_EGT_c2)
    end,
    valueEnabler = function()
      return get(mfi_mnemo_eng) == 1 and get(dc_bus) == 1
    end,
},

---- Давление масла первого двигателя (цифры)
digitstape {
  position = coords_converter(1408, 390, 25, 15),
  image = digitsImage,
  digits = 2,
  showLeadingZeros = false,
  allowNonRound = true,
  fractional = 1,
  value = function()
    return get(oil_pressure1)
  end,
  valueEnabler = function()
    return get(mfi_mnemo_eng) == 1
  end,
  visible = function()
    return get(mfi_mnemo_eng) == 1 and get(dc_bus) == 1
  end,
},

---- Давление масла второго двигателя (цифры)
digitstape {
  position = coords_converter(1535, 390, 25, 15),
  image = digitsImage,
  digits = 2,
  showLeadingZeros = false,
  allowNonRound = true,
  fractional = 1,
  value = function()
    return get(oil_pressure2)
  end,
  valueEnabler = function()
    return get(mfi_mnemo_eng) == 1
  end,
  visible = function()
    return get(mfi_mnemo_eng) == 1 and get(dc_bus) == 1
  end,
},

---- Переключение видимости дисплея двигателей  
switch {
	position = coords(1370, 146, 46, 45),
  state = function()
		return mfi_mnemo_eng ~= 0
  end,
	
  onMouseClick = function()
    if not switch_push then
      switch_push = true
      if mfi_mnemo_eng ~= 0 then
        mfi_mnemo_eng = 0
      else
          mfi_mnemo_eng = 1
      end
    end
    return true;
  end,

  onMouseUp = function()
    switch_push = false
    return true;
  end,
},

-- Связь

---- (ПРОСЛУШ)
texture{ 
	image = get(rotary_small),
	position = coords(595, 608, 50, 50),
},

---- (РАДИО) 
texture{ 
	image = get(rotary_small),
	position = coords(398, 608, 50, 50),
},

---- (СПУ) 
texture{ 
	image = get(rotary_small),
	position = coords(353, 663, 50, 50),
},

---- (ДИН) 
texture{ 
	image = get(rotary_small),
	position = coords(640, 663, 50, 50),
	-- position = {615, 512, 50, 50}
},


}
