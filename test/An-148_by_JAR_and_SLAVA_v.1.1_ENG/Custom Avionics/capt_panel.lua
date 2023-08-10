size = {1920, 1080}
-----------------
-- VARIABLES
-----------------
defineProperty("capt_subpanel", globalPropertyi("sim/an148/capt_subpanel"))
-----------------
defineProperty("pitch_electric_sim", globalPropertyf("sim/cockpit2/gauges/indicators/pitch_electric_deg_pilot"))
defineProperty("roll_electric_sim", globalPropertyf("sim/cockpit2/gauges/indicators/roll_electric_deg_pilot"))
defineProperty("heading", globalPropertyf("sim/cockpit2/gauges/indicators/heading_AHARS_deg_mag_pilot"))
defineProperty("AoA_angle_degrees", globalPropertyf("sim/flightmodel2/misc/AoA_angle_degrees"))
defineProperty("vvi", globalPropertyf("sim/cockpit2/gauges/indicators/vvi_fpm_pilot"))
defineProperty("pitch1", globalPropertyf("sim/an148/ag_tape"))
-----------------
defineProperty("mv1", globalPropertyi("sim/an148/mv1"))
defineProperty("mv2", globalPropertyi("sim/an148/mv2"))
defineProperty("mv3", globalPropertyi("sim/an148/mv3"))
defineProperty("dkmv1", globalPropertyi("sim/an148/dkmv1"))
defineProperty("dkmv2", globalPropertyi("sim/an148/dkmv2"))
defineProperty("vor1", globalPropertyi("sim/an148/vor1"))
defineProperty("vor2", globalPropertyi("sim/an148/vor2"))
defineProperty("dme1", globalPropertyi("sim/an148/dme1"))
defineProperty("dme2", globalPropertyi("sim/an148/dme2"))
defineProperty("ark1", globalPropertyi("sim/an148/ark1"))
defineProperty("ark2", globalPropertyi("sim/an148/ark2"))
defineProperty("sbros_acb", globalPropertyi("sim/an148/sbros_acb"))
defineProperty("cvbp", globalPropertyi("sim/an148/cvbp"))
defineProperty("pass", globalPropertyi("sim/an148/pass"))
defineProperty("km", globalPropertyi("sim/an148/km"))
-----------------
defineProperty("alt_m", globalPropertyi("sim/cockpit2/gauges/indicators/altitude_ft_pilot"))
defineProperty("airspeed", globalPropertyi("sim/cockpit2/gauges/indicators/airspeed_kts_pilot"))
defineProperty("airspeed_tape", globalPropertyf("sim/an148/airspeed"))
defineProperty("alt_tape", globalPropertyf("sim/an148/altitude"))
-----------------
defineProperty("master_caution", globalPropertyi("sim/cockpit2/annunciators/master_caution"))
defineProperty("master_warning", globalPropertyi("sim/cockpit2/annunciators/master_warning"))
-----------------
defineProperty("slip", globalPropertyf("sim/an148/slip_ball"))
defineProperty("ny", globalPropertyi("sim/an148/ny"))
defineProperty("gforce", globalPropertyf("sim/flightmodel2/misc/gforce_normal"))
defineProperty("AoA", globalPropertyi("sim/an148/AoA"))
-----------------
local mfi_mnemo_eng = 0
local mfi_mnemo_fuel = 0
local mfi_mnemo_conf = 0
local mfi_mnemo_air = 0
local mfi_mnemo_elec = 0
local mfi_mnemo_hydr = 0
local mfi_mnemo_sys = 1
local mfi_mnemo_stat = 0
local mfi_mnemo_tcas = 0
-----------------
defineProperty("rudder_marker", globalPropertyf("sim/an148/rudder_marker1"))
defineProperty("elevator_marker", globalPropertyf("sim/an148/elevator_marker1"))
defineProperty("aileron_marker", globalPropertyf("sim/an148/aileron_marker"))
-----------------
defineProperty("total_fuel", globalPropertyf("sim/flightmodel/weight/m_fuel_total"))
defineProperty("fuel_left", globalPropertyf("sim/flightmodel/weight/m_fuel1"))
defineProperty("fuel_mid", globalPropertyf("sim/flightmodel/weight/m_fuel2"))
defineProperty("fuel_right", globalPropertyf("sim/flightmodel/weight/m_fuel3"))
defineProperty("fuel_tank_selector", globalPropertyi("sim/cockpit2/fuel/fuel_tank_selector"))
defineProperty("fl_fuel_tank", globalPropertyi("sim/an148/fl_fuel_tank"))
defineProperty("sl_fuel_tank", globalPropertyi("sim/an148/sl_fuel_tank"))
defineProperty("fr_fuel_tank", globalPropertyi("sim/an148/fr_fuel_tank"))
defineProperty("sr_fuel_tank", globalPropertyi("sim/an148/sr_fuel_tank"))
defineProperty("fm_fuel_tank", globalPropertyi("sim/an148/fm_fuel_tank"))
defineProperty("sm_fuel_tank", globalPropertyi("sim/an148/sm_fuel_tank"))
-----------------
defineProperty("flaps_deg", globalPropertyf("sim/flightmodel2/wing/flap1_deg[0]"))
defineProperty("aileron_deg", globalPropertyf("sim/flightmodel2/wing/aileron1_deg[0]"))
defineProperty("elevator_deg", globalPropertyf("sim/flightmodel2/wing/elevator1_deg[0]"))
defineProperty("rudder_deg", globalPropertyf("sim/flightmodel2/wing/rudder1_deg[0]"))
defineProperty("speedbrake_deg", globalPropertyf("sim/flightmodel2/wing/speedbrake1_deg[0]"))
-----------------
defineProperty("test_value", globalPropertyf("sim/an148/test_value"))
defineProperty("test_value1", globalPropertyf("sim/an148/test_value1"))
-----------------
defineProperty("ENGN_EGT_c1", globalPropertyf("sim/flightmodel/engine/ENGN_EGT_c[0]"))
defineProperty("ENGN_EGT_c2", globalPropertyf("sim/flightmodel/engine/ENGN_EGT_c[1]"))
defineProperty("ENGN_N1_1", globalPropertyf("sim/flightmodel/engine/ENGN_N1_[0]"))
defineProperty("ENGN_N1_2", globalPropertyf("sim/flightmodel/engine/ENGN_N1_[1]"))
defineProperty("ENGN_N2_1", globalPropertyf("sim/flightmodel/engine/ENGN_N2_[0]"))
defineProperty("ENGN_N2_2", globalPropertyf("sim/flightmodel/engine/ENGN_N2_[1]"))
defineProperty("eng1_temp", globalPropertyf("sim/an148/eng1_temp"))
defineProperty("eng2_temp", globalPropertyf("sim/an148/eng2_temp"))
defineProperty("engine_speed_rpm1", globalPropertyf("sim/cockpit2/engine/indicators/engine_speed_rpm[0]"))
defineProperty("engine_speed_rpm2", globalPropertyf("sim/cockpit2/engine/indicators/engine_speed_rpm[1]"))
defineProperty("fuel_flow_kg_sec1", globalPropertyf("sim/cockpit2/engine/indicators/fuel_flow_kg_sec[0]"))
defineProperty("fuel_flow_kg_sec2", globalPropertyf("sim/cockpit2/engine/indicators/fuel_flow_kg_sec[1]"))
defineProperty("oil_pressure1", globalPropertyf("sim/cockpit2/engine/indicators/oil_pressure_psi[0]"))
defineProperty("oil_pressure2", globalPropertyf("sim/cockpit2/engine/indicators/oil_pressure_psi[1]"))
defineProperty("oil_temperature1", globalPropertyf("sim/cockpit2/engine/indicators/oil_temperature_deg_C[0]"))
defineProperty("oil_temperature2", globalPropertyf("sim/cockpit2/engine/indicators/oil_temperature_deg_C[1]"))
defineProperty("oil_quantity1", globalPropertyf("sim/cockpit2/engine/indicators/oil_quantity_ratio[0]"))
defineProperty("oil_quantity2", globalPropertyf("sim/cockpit2/engine/indicators/oil_quantity_ratio[1]"))
-----------------
defineProperty("gpu_on_power", globalPropertyf("sim/cockpit/electrical/gpu_on"))
defineProperty("inverter_on_1", globalPropertyi("sim/cockpit2/electrical/inverter_on[0]"))
defineProperty("inverter_on_2", globalPropertyi("sim/cockpit2/electrical/inverter_on[1]"))
defineProperty("inverter_on_3", globalPropertyi("sim/an148/inverter_on_3"))
defineProperty("generator_on_1", globalPropertyi("sim/cockpit2/electrical/generator_on[0]"))
defineProperty("generator_on_2", globalPropertyi("sim/cockpit2/electrical/generator_on[1]"))
defineProperty("generator_on_apu", globalPropertyi("sim/cockpit2/electrical/APU_generator_on"))
defineProperty("battery_on_1", globalPropertyi("sim/cockpit2/electrical/battery_on[0]"))
defineProperty("battery_on_2", globalPropertyi("sim/cockpit2/electrical/battery_on[1]"))
defineProperty("battery_on_3", globalPropertyi("sim/cockpit2/electrical/battery_on[2]"))
defineProperty("dc_bus", globalPropertyi("sim/an148/dc_bus"))
-----------------
defineProperty("tcas1_bearing", globalPropertyf("sim/cockpit2/tcas/indicators/relative_bearing_degs[0]"))
defineProperty("tcas1_distance", globalPropertyf("sim/cockpit2/tcas/indicators/relative_distance_mtrs[0]"))
defineProperty("tcas1_altitude", globalPropertyf("sim/cockpit2/tcas/indicators/relative_altitude_mtrs[0]"))
defineProperty("tcas2_bearing", globalPropertyf("sim/cockpit2/tcas/indicators/relative_bearing_degs[1]"))
defineProperty("tcas2_distance", globalPropertyf("sim/cockpit2/tcas/indicators/relative_distance_mtrs[1]"))
defineProperty("tcas2_altitude", globalPropertyf("sim/cockpit2/tcas/indicators/relative_altitude_mtrs[1]"))
defineProperty("tcas3_bearing", globalPropertyf("sim/cockpit2/tcas/indicators/relative_bearing_degs[2]"))
defineProperty("tcas3_distance", globalPropertyf("sim/cockpit2/tcas/indicators/relative_distance_mtrs[2]"))
defineProperty("tcas3_altitude", globalPropertyf("sim/cockpit2/tcas/indicators/relative_altitude_mtrs[2]"))
defineProperty("tcas4_bearing", globalPropertyf("sim/cockpit2/tcas/indicators/relative_bearing_degs[3]"))
defineProperty("tcas4_distance", globalPropertyf("sim/cockpit2/tcas/indicators/relative_distance_mtrs[3]"))
defineProperty("tcas4_altitude", globalPropertyf("sim/cockpit2/tcas/indicators/relative_altitude_mtrs[3]"))
-----------------
defineProperty("adf1_bearing", globalPropertyf("sim/cockpit/radios/adf1_dir_degt"))
defineProperty("adf2_bearing", globalPropertyf("sim/cockpit/radios/adf2_dir_degt"))
defineProperty("nav1_bearing", globalPropertyf("sim/cockpit/radios/nav1_dir_degt"))
defineProperty("nav2_bearing", globalPropertyf("sim/cockpit/radios/nav2_dir_degt"))
-----------------
defineProperty("hor_dev", globalPropertyf("sim/cockpit/radios/nav1_hdef_dot"))
defineProperty("vert_dev", globalPropertyf("sim/cockpit/radios/nav1_vdef_dot"))
defineProperty("fd_pilot", globalPropertyi("sim/an148/fd_pilot"))
-----------------
defineProperty("outer_marker_lit", globalPropertyi("sim/cockpit2/radios/indicators/outer_marker_lit"))	
defineProperty("middle_marker_lit", globalPropertyi("sim/cockpit2/radios/indicators/middle_marker_lit"))
defineProperty("inner_marker_lit", globalPropertyi("sim/cockpit2/radios/indicators/inner_marker_lit"))
-----------------
-- IMAGES
-----------------
defineProperty("background", loadImage("whitebackground.png"))
defineProperty("mfi_1", loadImage("mfi_left.png"))
defineProperty("on_light_big", loadImage("on_rectangle_light.png"))
defineProperty("warn_light", loadImage("warn_light.png"))
defineProperty("fault_light", loadImage("fault_light.png"))
defineProperty("yellow_light", loadImage("yellow_light.png"))
defineProperty("small_green_on", loadImage("small_green_on.png"))
defineProperty("slim_left", loadImage("slim_left.png"))
defineProperty("fat_right", loadImage("fat_right.png"))
defineProperty("rotary_small", loadImage("rotary_small.png"))
defineProperty("rotary_big", loadImage("rotary_big.png"))
defineProperty("blenker", loadImage("blenker.png"))
defineProperty("ag_tape", loadImage("ag_tape.png", 0, 0, 256, 450))
defineProperty("digitsImage", loadImage("white_digit_strip.png", 0, 0, 16, 196))
defineProperty("speed_tape", loadImage("speed_tape.png"))
defineProperty("slip_ball", loadImage("slip_ball.png"))
defineProperty("altitude_tape", loadImage("altitude_tape.png"))
defineProperty("white_needle", loadImage("white_needle.png"))
defineProperty("black_bg", loadImage("black_bg.png"))
defineProperty("heading_marker", loadImage("heading_marker.png"))
defineProperty("pitch_marker", loadImage("pitch_marker.png"))
defineProperty("roll_marker", loadImage("roll_marker.png"))
defineProperty("green_sector", loadImage("green_sector.png"))

defineProperty("air_mnemo", loadImage("air_mnemo.png"))
defineProperty("conf_mnemo", loadImage("conf_mnemo.png"))
defineProperty("eng_mnemo", loadImage("eng_mnemo.png")) 
defineProperty("fuel_mnemo", loadImage("fuel_mnemo.png"))
defineProperty("elec_mnemo", loadImage("elec_mnemo.png"))
defineProperty("tcas_mnemo", loadImage("tcas_mnemo.png"))
defineProperty("hydr_mnemo", loadImage("hydr_mnemo.png"))
defineProperty("stat_mnemo", loadImage("stat_mnemo.png"))
defineProperty("sys_mnemo", loadImage("sys_mnemo.png"))
defineProperty("nav_circle", loadImage("nav_circle.png"))

defineProperty("valve_open_h", loadImage("valve_open_h.png"))
defineProperty("valve_open_v", loadImage("valve_open_v.png"))
defineProperty("fuel_pump_on", loadImage("fuel_pump_on.png"))
defineProperty("fuel_lvl_tape", loadImage("fuel_lvl_tape.png"))

defineProperty("gen1_on", loadImage("gen1_on.png"))
defineProperty("gen2_on", loadImage("gen2_on.png"))
defineProperty("gpu_on", loadImage("gpu_on.png"))
defineProperty("apu_on", loadImage("apu_on.png"))
defineProperty("rect1_on", loadImage("rect1_on.png"))
defineProperty("rect2_on", loadImage("rect2_on.png"))
defineProperty("rect3_on", loadImage("rect3_on.png"))
defineProperty("bat1_on", loadImage("bat1_on.png"))
defineProperty("bat2_on", loadImage("bat2_on.png"))
defineProperty("bat3_on", loadImage("bat3_on.png"))

defineProperty("oil_tape", loadImage("oil_tape.png"))

defineProperty("aoa_needle", loadImage("aoa_vs_needle.png"))

defineProperty("tcas_plane", loadImage("tcas_plane.png"))
defineProperty("tcas_plane2", loadImage("tcas_plane2.png"))

defineProperty("vor1_needle", loadImage("vor1_needle.png"))
defineProperty("vor2_needle", loadImage("vor2_needle.png"))

defineProperty("v_marker", loadImage("v_marker.png"))
defineProperty("h_marker", loadImage("h_marker.png"))

defineProperty("h_marker2", loadImage("course_triangle.png"))
defineProperty("v_marker2", loadImage("glideslope_triangle.png"))

defineProperty("middle_marker", loadImage("middle_marker.png"))
defineProperty("inner_marker", loadImage("inner_marker.png"))
defineProperty("outer_marker", loadImage("outer_marker.png"))

local switch_sound = loadSample('Custom Sounds/metal_switch.wav')
local switch_plastic = loadSample('Custom Sounds/plastic_switch.wav')
local switch_push = false
local vor1_btn = 1
local vor2_btn = 1
local adf1_btn = 0
local adf2_btn = 0

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
------------------------------------------------------------------------------------------------------------------------------------------
texture{ --FUEL
	image = get(fuel_mnemo),
	position = {1394, 162, 472, 621},
	visible = function()
		return get(mfi_mnemo_fuel) == 1 and get(dc_bus) == 1
	end,
},
---------------------------------------------------------------------
--pk_left
texture{ 
	image = get(valve_open_v),
	position = {1462, 719, 34, 34},
	visible = function()
		return get(mfi_mnemo_fuel) == 1 and get(dc_bus) == 1
	end,
},
---------------------------------------------------------------------
--pk_right
texture{ 
	image = get(valve_open_v),
	position = {1763, 719, 34, 34},
	visible = function()
		return get(mfi_mnemo_fuel) == 1 and get(dc_bus) == 1
	end,
},
---------------------------------------------------------------------
--ring_valve
texture{ 
	image = get(valve_open_h),
	position = {1614, 719, 34, 34},
	visible = function()
		return get(mfi_mnemo_fuel) == 1 and get(fuel_tank_selector) == 4 and get(dc_bus) == 1
	end,
},
---------------------------------------------------------------------
--left1_fuel_pump
texture{ 
	image = get(fuel_pump_on),
	position = {1439, 586, 34, 34},
	visible = function()
		return get(mfi_mnemo_fuel) == 1 and get(fl_fuel_tank) == 1 and get(dc_bus) == 1
	end,
},
---------------------------------------------------------------------
--left2_fuel_pump
texture{ 
	image = get(fuel_pump_on),
	position = {1487, 586, 34, 34},
	visible = function()
		return get(mfi_mnemo_fuel) == 1 and get(sl_fuel_tank) == 1 and get(dc_bus) == 1
	end,
},
---------------------------------------------------------------------
--right1_fuel_pump
texture{ 
	image = get(fuel_pump_on),
	position = {1739, 586, 34, 34},
	visible = function()
		return get(mfi_mnemo_fuel) == 1 and get(fr_fuel_tank) == 1 and get(dc_bus) == 1
	end,
},
---------------------------------------------------------------------
--right2_fuel_pump
texture{ 
	image = get(fuel_pump_on),
	position = {1787, 586, 34, 34},
	visible = function()
		return get(mfi_mnemo_fuel) == 1 and get(sr_fuel_tank) == 1 and get(dc_bus) == 1
	end,
},
---------------------------------------------------------------------
--left_center_fuel_pump
texture{ 
	image = get(valve_open_h),
	position = {1536, 560, 34, 34},
	visible = function()
		return get(mfi_mnemo_fuel) == 1 and get(fm_fuel_tank) == 1 and get(dc_bus) == 1
	end,
},
---------------------------------------------------------------------
--right_center_fuel_pump
texture{ 
	image = get(valve_open_h),
	position = {1684, 560, 34, 34},
	visible = function()
		return get(mfi_mnemo_fuel) == 1 and get(sm_fuel_tank) == 1 and get(dc_bus) == 1
	end,
},
---------------------------------------------------------------------
tape { --left_tank
        position = {1422, 568, 15, 70},
        image = get(fuel_lvl_tape),
		window = {1.0, 0.5},
		scrollY = function()
			return map(get(fuel_left), 0, 4190, 0, 0.5)
		end,
		visible = function()
			return get(mfi_mnemo_fuel) == 1 and get(dc_bus) == 1
		end,
    },		
--------------------------------------------------------------------
tape { --mid_tank
        position = {1622, 546, 15, 64},
        image = get(fuel_lvl_tape),
		window = {1.0, 0.5},
		scrollY = function()
			return map(get(fuel_mid), 0, 3259, 0, 0.5)
		end,
		visible = function()
			return get(mfi_mnemo_fuel) == 1 and get(dc_bus) == 1
		end,
    },		
--------------------------------------------------------------------
tape { --right_tank
        position = {1824, 568, 15, 70},
        image = get(fuel_lvl_tape),
		window = {1.0, 0.5},
		scrollY = function()
			return map(get(fuel_right), 0, 4190, 0, 0.5)
		end,
		visible = function()
			return get(mfi_mnemo_fuel) == 1 and get(dc_bus) == 1
		end,
    },	
--------------------------------------------------------------------
-- total fuel digits
    digitstape {
        position = { 1758, 492, 60, 20},
        image = digitsImage,
        digits = 5,
        showLeadingZeros = false,
		allowNonRound = true,
        value = function()
			return get(total_fuel)
		end,
		visible = function()
			return get(mfi_mnemo_fuel) == 1 and get(dc_bus) == 1
		end,
    };
---------------------------------------------------------------------
    -- left fuel digits
    digitstape {
        position = { 1460, 545, 40, 20},
        image = digitsImage,
        digits = 4,
        showLeadingZeros = false,
		allowNonRound = true,
        value = function()
			return get(fuel_left)
		end,
		visible = function()
			return get(mfi_mnemo_fuel) == 1 and get(dc_bus) == 1
		end,
    };
---------------------------------------------------------------------
    -- mid fuel digits
    digitstape {
        position = { 1605, 515, 40, 20},
        image = digitsImage,
        digits = 4,
        showLeadingZeros = false,
		allowNonRound = true,
        value = function()
			return get(fuel_mid)
		end,
		visible = function()
			return get(mfi_mnemo_fuel) == 1 and get(dc_bus) == 1
		end,
    };
---------------------------------------------------------------------
    -- right fuel digits
    digitstape {
        position = { 1775, 545, 40, 20},
        image = digitsImage,
        digits = 4,
        showLeadingZeros = false,
		allowNonRound = true,
        value = function()
			return get(fuel_right)
		end,
		visible = function()
			return get(mfi_mnemo_fuel) == 1 and get(dc_bus) == 1
		end,
    };
------------------------------------------------------------------------------------------------------------------------------------------
texture{ --ELEC
	image = get(elec_mnemo),
	position = {1394, 162, 472, 621},
	visible = function()
		return get(mfi_mnemo_elec) == 1 and get(dc_bus) == 1
	end,
},
---------------------------------------------------------------------
texture{ --gen1_on
	image = get(gen1_on),
	position = {1455, 483, 348, 134},
	visible = function()
		return get(mfi_mnemo_elec) == 1 and get(generator_on_1) == 1 and get(dc_bus) == 1
	end,
},
---------------------------------------------------------------------
texture{ --gpu_on
	image = get(gpu_on),
	position = {1456, 483, 348, 134},
	visible = function()
		return get(mfi_mnemo_elec) == 1 and get(gpu_on_power) == 1 and get(dc_bus) == 1
	end,
},
---------------------------------------------------------------------
texture{ --apu_on
	image = get(apu_on),
	position = {1456, 483, 348, 134},
	visible = function()
		return get(mfi_mnemo_elec) == 1 and get(generator_on_apu) == 1 and get(dc_bus) == 1
	end,
},
---------------------------------------------------------------------
texture{ --gen2_on
	image = get(gen2_on),
	position = {1456, 483, 348, 134},
	visible = function()
		return get(mfi_mnemo_elec) == 1 and get(generator_on_2) == 1 and get(dc_bus) == 1
	end,
},
---------------------------------------------------------------------
texture{ --rect1_on
	image = get(rect1_on),
	position = {1431, 617, 398, 154},
	visible = function()
		return get(mfi_mnemo_elec) == 1 and get(inverter_on_1) == 1 and get(dc_bus) == 1
	end,
},
---------------------------------------------------------------------
texture{ --rect2_on
	image = get(rect2_on),
	position = {1431, 617, 398, 154},
	visible = function()
		return get(mfi_mnemo_elec) == 1 and get(inverter_on_2) == 1 and get(dc_bus) == 1
	end,
},
---------------------------------------------------------------------
texture{ --rect3_on
	image = get(rect3_on),
	position = {1431, 617, 398, 154},
	visible = function()
		return get(mfi_mnemo_elec) == 1 and get(inverter_on_3) == 1 and get(dc_bus) == 1
	end,
},
---------------------------------------------------------------------
texture{ --bat1_on
	image = get(bat1_on),
	position = {1432, 669, 399, 71},
	visible = function()
		return get(mfi_mnemo_elec) == 1 and get(battery_on_1) == 1 and get(dc_bus) == 1
	end,
},
---------------------------------------------------------------------
texture{ --bat2_on
	image = get(bat2_on),
	position = {1431, 669, 399, 71},
	visible = function()
		return get(mfi_mnemo_elec) == 1 and get(battery_on_2) == 1 and get(dc_bus) == 1
	end,
},
---------------------------------------------------------------------
texture{ --bat3_on
	image = get(bat3_on),
	position = {1430, 669, 399, 71},
	visible = function()
		return get(mfi_mnemo_elec) == 1 and get(battery_on_3) == 1 and get(dc_bus) == 1
	end,
},
------------------------------------------------------------------------------------------------------------------------------------------
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
---------------------------------------------------------------------
needle{ 
	image = get(green_sector), --сектор правого двигателя
	position = {1511, 654, 108, 108},
	angle = function()
		return get(eng2_temp)
	end,
	visible = function()
		return get(mfi_mnemo_eng) == 1 and get(dc_bus) == 1
	end,
},
---------------------------------------------------------------------
needle{ 
	image = get(green_sector), --сектор левого давления масла
	position = {1402, 374, 68, 68},
	angle = function()
		return map(get(oil_pressure1), 0, 5, 0, 180)
	end,
	visible = function()
		return get(mfi_mnemo_eng) == 1 and get(dc_bus) == 1
	end,
},
---------------------------------------------------------------------
needle{ 
	image = get(green_sector), --сектор правого давления масла
	position = {1529, 374, 68, 68},
	angle = function()
		return map(get(oil_pressure2), 0, 5, 0, 180)
	end,
	visible = function()
		return get(mfi_mnemo_eng) == 1 and get(dc_bus) == 1
	end,
},
---------------------------------------------------------------------
texture{ --ENG
	image = get(eng_mnemo),
	position = {1394, 162, 472, 621},
	visible = function()
		return get(mfi_mnemo_eng) == 1 and get(dc_bus) == 1
	end,
},
---------------------------------------------------------------------
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
---------------------------------------------------------------------
	    -- eng2 digits
    digitstape {
        position = { 1545, 662, 34, 15},
        image = digitsImage,
        digits = 3,
        showLeadingZeros = false,
		allowNonRound = true,
        value = function()
			return map(get(engine_speed_rpm2), 0, 3867, 0, 100)
		end,
		valueEnabler = function()
			return get(mfi_mnemo_eng) == 1 and get(dc_bus) == 1
		end,
    };
---------------------------------------------------------------------
    -- eng1_n1 digits
    digitstape {
        position = { 1447, 635, 35, 15},
        image = digitsImage,
        digits = 3,
        showLeadingZeros = false,
		allowNonRound = true,
        value = function()
			return get(ENGN_N1_1)
		end,
		valueEnabler = function()
			return get(mfi_mnemo_eng) == 1 and get(dc_bus) == 1
		end,
    };
---------------------------------------------------------------------
	    -- eng2_n1 digits
    digitstape {
        position = { 1545, 635, 34, 15},
        image = digitsImage,
        digits = 3,
        showLeadingZeros = false,
		allowNonRound = true,
        value = function()
			return get(ENGN_N1_2)
		end,
		valueEnabler = function()
			return get(mfi_mnemo_eng) == 1 and get(dc_bus) == 1
		end,
    };
---------------------------------------------------------------------
	    -- eng1_n2 digits
    digitstape {
        position = { 1447, 608, 35, 15},
        image = digitsImage,
        digits = 3,
        showLeadingZeros = false,
		allowNonRound = true,
        value = function()
			return get(ENGN_N2_1)
		end,
		valueEnabler = function()
			return get(mfi_mnemo_eng) == 1 and get(dc_bus) == 1
		end,
    };
---------------------------------------------------------------------
	    -- eng2_n2 digits
    digitstape {
        position = { 1545, 608, 34, 15},
        image = digitsImage,
        digits = 3,
        showLeadingZeros = false,
		allowNonRound = true,
        value = function()
			return get(ENGN_N2_2)
		end,
		valueEnabler = function()
			return get(mfi_mnemo_eng) == 1 and get(dc_bus) == 1
		end,
    };
---------------------------------------------------------------------
	-- eng1_ff digits
    digitstape {
        position = { 1447, 575, 35, 15},
        image = digitsImage,
        digits = 4,
        showLeadingZeros = false,
		allowNonRound = true,
        value = function()
			return get(fuel_flow_kg_sec1) * 3600
		end,
		valueEnabler = function()
			return get(mfi_mnemo_eng) == 1 and get(dc_bus) == 1
		end,
    };
---------------------------------------------------------------------
	    -- eng2_ff digits
    digitstape {
        position = { 1545, 575, 34, 15},
        image = digitsImage,
        digits = 4,
        showLeadingZeros = false,
		allowNonRound = true,
        value = function()
			return get(fuel_flow_kg_sec2) * 3600
		end,
		valueEnabler = function()
			return get(mfi_mnemo_eng) == 1 and get(dc_bus) == 1
		end,
    };
---------------------------------------------------------------------
	-- eng1_oil_press digits
    digitstape {
        position = { 1408, 390, 25, 15},
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
    };
---------------------------------------------------------------------
	    -- eng2_oil_press digits
    digitstape {
        position = { 1535, 390, 25, 15},
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
    };
---------------------------------------------------------------------
	-- eng1_oil_temp digits
    digitstape {
        position = { 1447, 359, 25, 15},
        image = digitsImage,
        digits = 3,
        showLeadingZeros = false,
		allowNonRound = true,
        value = function()
			return get(oil_temperature1)
		end,
		valueEnabler = function()
			return get(mfi_mnemo_eng) == 1
		end,
	visible = function()
		return get(mfi_mnemo_eng) == 1 and get(dc_bus) == 1
	end,
    };
---------------------------------------------------------------------
	    -- eng2_oil_temp digits
    digitstape {
        position = { 1572, 359, 25, 15},
        image = digitsImage,
        digits = 3,
        showLeadingZeros = false,
		allowNonRound = true,
        value = function()
			return get(oil_temperature2)
		end,
		valueEnabler = function()
			return get(mfi_mnemo_eng) == 1 and get(dc_bus) == 1
		end,
    };
---------------------------------------------------------------------
tape { --oil_quantity1
    position = {1485, 352, 9, 92},
    image = get(oil_tape),
	window = {1.0, 0.5},
	scrollY = function()
		return map(get(oil_quantity1), 0, 1, 0, 0.5)
	end,
	visible = function()
		return get(mfi_mnemo_eng) == 1 and get(dc_bus) == 1
	end,
    },
---------------------------------------------------------------------
tape { --oil_quantity2
       position = {1610, 352, 9, 92},
       image = get(oil_tape),
	window = {1.0, 0.5},
	scrollY = function()
		return map(get(oil_quantity2), 0, 1, 0, 0.5)
	end,
	visible = function()
		return get(mfi_mnemo_eng) == 1 and get(dc_bus) == 1
	end,
    },
---------------------------------------------------------------------
    -- eng1_egt digits
    digitstape {
        position = { 1404, 688, 35, 15},
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
---------------------------------------------------------------------
	    -- eng2_egt digits
    digitstape {
        position = { 1522, 688, 34, 15},
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
    };	
------------------------------------------------------------------------------------------------------------------------------------------
texture{ --МВ1
	image = get(on_light_big),
	position = {352, 327, 50, 18},
	visible = function()
		return get(mv1) == 1
	end,
},
---------------------------------------------------------------------
texture{ --МВ2
	image = get(on_light_big),
	position = {409, 327, 50, 18},
	visible = function()
		return get(mv2) == 1
	end,
},
---------------------------------------------------------------------
texture{ --МВ3
	image = get(on_light_big),
	position = {466, 327, 50, 18},
	visible = function()
		return get(mv3) == 1
	end,
},
---------------------------------------------------------------------
texture{ --ДКМВ1
	image = get(on_light_big),
	position = {523, 327, 50, 18},
	visible = function()
		return get(dkmv1) == 1
	end,
},
---------------------------------------------------------------------
texture{ --DME1
	image = get(on_light_big),
	position = {352, 271, 50, 18},
		visible = function()
		return get(dme1) == 1
	end,
},
---------------------------------------------------------------------
texture{ --АРК1
	image = get(on_light_big),
	position = {409, 271, 50, 18},
	visible = function()
		return get(ark1) == 1
	end,
},
---------------------------------------------------------------------
texture{ --VOR1
	image = get(on_light_big),
	position = {466, 271, 50, 18},
	visible = function()
		return get(vor1) == 1
	end,
},
---------------------------------------------------------------------
texture{ --ДКМВ2
	image = get(on_light_big),
	position = {523, 271, 50, 18},
	visible = function()
		return get(dkmv2) == 1
	end,
},
---------------------------------------------------------------------
texture{ --DME2
	image = get(on_light_big),
	position = {352, 214, 50, 18},
	visible = function()
		return get(dme2) == 1
	end,
},
---------------------------------------------------------------------
texture{ --АРК2
	image = get(on_light_big),
	position = {409, 214, 50, 18},
	visible = function()
		return get(ark2) == 1
	end,
},
---------------------------------------------------------------------
texture{ --VOR2
	image = get(on_light_big),
	position = {466, 214, 50, 18},
	visible = function()
		return get(vor2) == 1
	end,
},
---------------------------------------------------------------------
texture{ --СБРОС АСВ
	image = get(on_light_big),
	position = {523, 214, 50, 18},
	visible = function()
		return get(sbros_acb) == 1
	end,
},
---------------------------------------------------------------------
texture{ --ЦВБП
	image = get(on_light_big),
	position = {593, 327, 50, 18},
	visible = function()
		return get(cvbp) == 1 
	end,
},
---------------------------------------------------------------------
texture{ --ПАСС
	image = get(on_light_big),
	position = {593, 271, 50, 18},
	visible = function()
		return get(pass) == 1
	end,
},
---------------------------------------------------------------------
texture{ --КМ
	image = get(on_light_big),
	position = {593, 214, 50, 18},
	visible = function()
		return get(km) == 1
	end,
},
---------------------------------------------------------------------
texture{ --AIR
	image = get(air_mnemo),
	position = {1394, 162, 472, 621},
	visible = function()
		return get(mfi_mnemo_air) == 1 and get(dc_bus) == 1
	end,
},
---------------------------------------------------------------------
texture{ --CONF
	image = get(conf_mnemo),
	position = {1394, 162, 472, 621},
	visible = function()
		return get(mfi_mnemo_conf) == 1 and get(dc_bus) == 1
	end,
},
---------------------------------------------------------------------
texture{ --HYDR
	image = get(hydr_mnemo),
	position = {1394, 162, 472, 621},
	visible = function()
		return get(mfi_mnemo_hydr) == 1 and get(dc_bus) == 1
	end,
},
---------------------------------------------------------------------
needle{ --TCAS nav
	image = get(nav_circle),
	position = {1394, 270, 472, 472},
	angle = function()
		return get(heading) * -1
	end,
	visible = function()
		return get(mfi_mnemo_tcas) == 1 and get(dc_bus) == 1
	end,
},
---------------------------------------------------------------------
texture{ --TCAS
	image = get(tcas_mnemo),
	position = {1394, 162, 472, 621},
	visible = function()
		return get(mfi_mnemo_tcas) == 1 and get(dc_bus) == 1
	end,
},
---------------------------------------------------------------------
texture{ --SYSTEM
	image = get(sys_mnemo),
	position = {1394, 162, 472, 621},
	visible = function()
		return get(mfi_mnemo_sys) == 1 and get(dc_bus) == 1
	end,
},
---------------------------------------------------------------------
texture{ --STAT
	image = get(stat_mnemo),
	position = {1394, 162, 472, 621},
	visible = function()
		return get(mfi_mnemo_stat) == 1 and get(dc_bus) == 1
	end,
},
---------------------------------------------------------------------
texture{ --ПРЕДУПР
	image = get(warn_light),
	position = {947, 951, 63, 29},
	visible = function()
		return get(master_caution) == 1 and get(dc_bus) == 1
	end,
},
---------------------------------------------------------------------
texture{ --АВАР
	image = get(fault_light),
	position = {1100, 951, 63, 29},
	visible = function()
		return get(master_warning) == 1 and get(dc_bus) == 1
	end,
},
---------------------------------------------------------------------
texture{ --СИСТ
	image = get(yellow_light),
	position = {1239, 1020, 39, 8},
	visible = function()
		return get(mfi_mnemo_sys) == 1 and get(dc_bus) == 1
	end,
},
---------------------------------------------------------------------
texture{ --СТАТ
	image = get(yellow_light),
	position = {1239, 969, 39, 8},
	visible = function()
		return get(mfi_mnemo_stat) == 1 and get(dc_bus) == 1
	end,
},
---------------------------------------------------------------------
--[[
texture{ --WXR
	image = get(small_green_on),
	position = {1347, 788, 29, 8},
	visible = function()
		return false
	end,
},
---------------------------------------------------------------------
texture{ --TAWS
	image = get(small_green_on),
	position = {1347, 746, 29, 8},
	visible = function()
		return false
	end,
},
---------------------------------------------------------------------
texture{ --РЕЗ УПР
	image = get(small_green_on),
	position = {1486, 746, 29, 8},
	visible = function()
		return false
	end,
},--]]
---------------------------------------------------------------------
texture{ --VOR1
	image = get(slim_left),
	position = {1621, 1020, 35, 15},
	visible = function()
		return vor1_btn == 1
	end,
},
---------------------------------------------------------------------
texture{ --ADF1
	image = get(slim_left),
	position = {1621, 964, 35, 15},
	visible = function()
		return adf1_btn == 1
	end,
},
---------------------------------------------------------------------
texture{ --VOR2
	image = get(fat_right),
	position = {1676, 1020, 35, 15},
	visible = function()
		return vor2_btn == 1
	end,
},
---------------------------------------------------------------------
texture{ --ADF2
	image = get(fat_right),
	position = {1676, 964, 35, 15},
	visible = function()
		return adf2_btn == 1
	end,
},
---------------------------------------------------------------------
--VOR1
switch {
	position = {1613, 991, 38, 38},
    state = function()
		return true
    end,
	
onMouseClick = function()
	if vor1_btn ~= 0 then
		vor1_btn = 0
		adf1_btn = 1
	else
		vor1_btn = 1
		adf1_btn = 0
	end
return true;
end,	
},
---------------------------------------------------------------------
--VOR2
switch {
	position = {1670, 991, 38, 38},
        state = function()
		return true
        end,
	
onMouseClick = function()
	if vor2_btn ~= 0 then
		vor2_btn = 0
		adf2_btn = 1
	else
		vor2_btn = 1
		adf2_btn = 0
	end
return true;
end,	
},
---------------------------------------------------------------------
--ADF1
switch {
	position = {1613, 936, 38, 38},
    state = function()
		return true
    end,
	
onMouseClick = function()
	if adf1_btn ~= 0 then
		vor1_btn = 1
		adf1_btn = 0
	else
		vor1_btn = 0
		adf1_btn = 1
	end
return true;
end,	
},
---------------------------------------------------------------------
--ADF2
switch {
	position = {1670, 936, 38, 38},
        state = function()
		return true
        end,
	
onMouseClick = function()
	if adf2_btn ~= 0 then
		vor2_btn = 1
		adf2_btn = 0
	else
		vor2_btn = 0
		adf2_btn = 1
	end
return true;
end,	
},
---------------------------------------------------------------------
texture{ --ДВИГ
	image = get(yellow_light),
	position = {1350, 939, 39, 8},
	visible = function()
		return get(mfi_mnemo_eng) == 1 and get(dc_bus) == 1
	end,
},
---------------------------------------------------------------------
texture{ --ТОПЛ
	image = get(yellow_light),
	position = {1350, 994, 39, 8},
	visible = function()
		return get(mfi_mnemo_fuel) == 1 and get(dc_bus) == 1
	end,
},
---------------------------------------------------------------------
texture{ --КОНФ
	image = get(yellow_light),
	position = {1295, 994, 39, 8},
	visible = function()
		return get(mfi_mnemo_conf) == 1 and get(dc_bus) == 1
	end,
},
---------------------------------------------------------------------
texture{ --ВОЗД
	image = get(yellow_light),
	position = {1295, 939, 39, 8},
	visible = function()
		return get(mfi_mnemo_air) == 1 and get(dc_bus) == 1
	end,
},
---------------------------------------------------------------------
texture{ --СЭС
	image = get(yellow_light),
	position = {1350, 1049, 39, 8},
	visible = function()
		return get(mfi_mnemo_elec) == 1 and get(dc_bus) == 1
	end,
},
---------------------------------------------------------------------
texture{ --ГИДР
	image = get(yellow_light),
	position = {1295, 1049, 39, 8},
	visible = function()
		return get(mfi_mnemo_hydr) == 1 and get(dc_bus) == 1
	end,
},
------------------------------------------------------------------------------------------------------------------------------------------
texture{ --TCAS
	image = get(small_green_on),
	position = {1551, 939, 39, 12},
	visible = function()
		return get(mfi_mnemo_tcas) == 1 and get(dc_bus) == 1
	end,
},
---------------------------------------------------------------------
freeTexture{ --tcas_1
	image = function()
		if get(tcas1_altitude) < 1000 and get(tcas1_distance) < 5000 then
			return get(tcas_plane2)
		else
			return get(tcas_plane)
		end
	end,
	positionX = function()
		if get(tcas1_bearing) < 0 then
			return map(get(tcas1_distance), 50000, 0, 1432, 1629)
		else
			return map(get(tcas1_distance), 0, 50000, 1629, 1826)
		end
	end,
	positionY  = function()
		if get(tcas1_bearing) < 0 then
			return map(get(tcas1_bearing) * (-1), 0, 180, 567, 173)
		else
			return map(get(tcas1_bearing), 0, 180, 567, 173)
		end
	end,
	width = 14,
	height = 14,
	visible = function()
		if get(tcas1_distance) == 0 and get(tcas1_bearing) == 0 and get(tcas1_altitude) == 0 then
			return false
		elseif get(tcas1_distance) < 50000 and get(mfi_mnemo_tcas) == 1 then 
			return true
		end
	end,
},
---------------------------------------------------------------------
freeTexture{ --tcas_2
	image = function()
		if get(tcas2_altitude) < 1000 and get(tcas2_distance) < 5000 then
			return get(tcas_plane2)
		else
			return get(tcas_plane)
		end
	end,
	positionX = function()
		if get(tcas2_bearing) < 0 then
			return map(get(tcas2_distance), 50000, 0, 1432, 1629)
		else
			return map(get(tcas2_distance), 0, 50000, 1629, 1826)
		end
	end,
	positionY  = function()
		if get(tcas2_bearing) < 0 then
			return map(get(tcas2_bearing) * (-1), 0, 180, 567, 173)
		else
			return map(get(tcas2_bearing), 0, 180, 567, 173)
		end
	end,
	width = 14,
	height = 14,
	visible = function()
		if get(tcas2_distance) == 0 and get(tcas2_bearing) == 0 and get(tcas2_altitude) == 0 then
			return false
		elseif get(tcas2_distance) < 50000 and get(mfi_mnemo_tcas) == 1 then 
			return true
		end
	end,
},
---------------------------------------------------------------------
freeTexture{ --tcas_3
	image = function()
		if get(tcas3_altitude) < 1000 and get(tcas3_distance) < 5000 then
			return get(tcas_plane2)
		else
			return get(tcas_plane)
		end
	end,
	positionX = function()
		if get(tcas3_bearing) < 0 then
			return map(get(tcas3_distance), 50000, 0, 1432, 1629)
		else
			return map(get(tcas3_distance), 0, 50000, 1629, 1826)
		end
	end,
	positionY  = function()
		if get(tcas3_bearing) < 0 then
			return map(get(tcas3_bearing) * (-1), 0, 180, 567, 173)
		else
			return map(get(tcas3_bearing), 0, 180, 567, 173)
		end
	end,
	width = 14,
	height = 14,
	visible = function()
		if get(tcas3_distance) == 0 and get(tcas3_bearing) == 0 and get(tcas3_altitude) == 0 then
			return false
		elseif get(tcas3_distance) < 50000 and get(mfi_mnemo_tcas) == 1 then 
			return true
		end
	end,
},
---------------------------------------------------------------------
freeTexture{ --tcas_4
	image = function()
		if get(tcas4_altitude) < 1000 and get(tcas4_distance) < 5000 then
			return get(tcas_plane2)
		else
			return get(tcas_plane)
		end
	end,
	positionX = function()
		if get(tcas4_bearing) < 0 then
			return map(get(tcas4_distance), 50000, 0, 1432, 1629)
		else
			return map(get(tcas4_distance), 0, 50000, 1629, 1826)
		end
	end,
	positionY  = function()
		if get(tcas4_bearing) < 0 then
			return map(get(tcas4_bearing) * (-1), 0, 180, 567, 173)
		else
			return map(get(tcas4_bearing), 0, 180, 567, 173)
		end
	end,
	width = 14,
	height = 14,
	visible = function()
		if get(tcas4_distance) == 0 and get(tcas4_bearing) == 0 and get(tcas4_altitude) == 0 then
			return false
		elseif get(tcas4_distance) < 50000 and get(mfi_mnemo_tcas) == 1 then 
			return true
		end
	end,
},
------------------------------------------------------------------------------------------------------------------------------------------
texture{ 
	image = get(rotary_small),
	position = {329, 391, 50, 50},
},
---------------------------------------------------------------------
texture{ 
	image = get(rotary_small),
	position = {615, 391, 50, 50},
},
---------------------------------------------------------------------
texture{ 
	image = get(rotary_small),
	position = {374, 446, 50, 50},
},
---------------------------------------------------------------------
texture{ 
	image = get(rotary_small),
	position = {572, 446, 50, 50},
},
---------------------------------------------------------------------
texture{ 
	image = get(rotary_big),
	position = {465, 407, 68, 68},
},
---------------------------------------------------------------------

--------------------------------------------------------------------
rotatedTape { --ag_tape
        position = {904, 463, 250, 250},
        image = get(ag_tape),
		window = {0.6, 0.6},
		scrollY = function()
			return get(pitch1)
		end,
		scrollX = function()
			return get(0.188)
		end,
		angle = function()
			return get(roll_electric_sim) * -1
		end,
		visible = function()
			return get(dc_bus)
		end,
    },		
--------------------------------------------------------------------
freeTexture{ --курсовой маркер FD
	image = get(h_marker),
	positionX = function()
		return map(get(hor_dev), -2.5, 2.5, 1003, 1066)
	end,
	positionY = 556,
	width = 4,
	height = 63,
	visible = function()
		return get(dc_bus) == 1 and get(fd_pilot) == 1
	end,
},
--------------------------------------------------------------------
freeTexture{ --глиссадный маркер FD
	image = get(v_marker),
	positionX = 1003,
	positionY = function()		
		return map(get(vert_dev), -2.5, 2.5, 619, 556)
	end,
	width = 63,
	height = 4,
	visible = function()
		return get(dc_bus) == 1 and get(fd_pilot) == 1
	end,
},
--------------------------------------------------------------------
texture{ 
	image = get(blenker), --силуэт 
	position = {976, 577, 110, 16},
	visible = function()
		return get(dc_bus)
	end,
},
---------------------------------------------------------------------
tape { --speed_tape
        position = {864, 477, 57, 305},
        image = get(speed_tape),
		window = {1.0, 0.5},
		scrollY = function()
			return get(airspeed_tape)
		end,
		visible = function()
			return get(dc_bus)
		end,
    },		
--------------------------------------------------------------------
tape { --altitude_tape
        position = {1148, 455, 64, 320},
        image = get(altitude_tape),
		window = {1.0, 0.35},
		scrollY = function()
			return get(alt_tape)
		end,
		visible = function()
			return get(dc_bus)
		end,
    },		
--------------------------------------------------------------------
texture{ 
	image = get(mfi_1), --фон кадра мфи
	position = {799, 161, 472, 623},
	visible = function()
		return get(dc_bus)
	end,
},
---------------------------------------------------------------------
freeTexture{ --курсовой маркер 
	image = get(h_marker2),
	positionX = function()
		return map(get(hor_dev), -2.5, 2.5, 989, 1060)
	end,
	positionY = 433,
	width = 18,
	height = 23,
	visible = function()
		return get(dc_bus) == 1 and get(fd_pilot) == 1
	end,
},
--------------------------------------------------------------------
freeTexture{ --глиссадный маркер 
	image = get(v_marker2),
	positionX = 1121,
	positionY = function()		
		return map(get(vert_dev), -2.5, 2.5, 605, 550)
	end,
	width = 23,
	height = 18,
	visible = function()
		return get(dc_bus) == 1 and get(fd_pilot) == 1
	end,
},
--------------------------------------------------------------------
texture{ 
	image = get(inner_marker), --ближний маркер
	position = {1179, 409, 81, 24},
	visible = function()
		return get(inner_marker_lit)
	end,
},
---------------------------------------------------------------------
texture{ 
	image = get(middle_marker), --средний маркер
	position = {1179, 409, 81, 24},
	visible = function()
		return get(middle_marker_lit)
	end,
},
---------------------------------------------------------------------
texture{ 
	image = get(outer_marker), --дальний маркер
	position = {1179, 409, 81, 24},
	visible = function()
		return get(outer_marker_lit)
	end,
},
---------------------------------------------------------------------
needle{ 
	image = get(aoa_needle), --стрелка AoA
	position = {811, 255, 617, 617},
	angle = function()
		if get(AoA_angle_degrees) < 0 then
			return -14.5
		elseif get(AoA_angle_degrees) > 15 then
			return 14.5
		else
			return map(get(AoA_angle_degrees), 0, 15, -14.5, 14.5)
		end
	end,
	visible = function()
		return get(dc_bus)
	end,
},
---------------------------------------------------------------------
needle{ 
	image = get(aoa_needle), --стрелка V/S
	position = {1215, 269, 600, 617},
	angle = function()
		if get(vvi) < -1000 then
			return -15
		elseif get(vvi) > 1000 then
			return 15
		else		
			return map(get(vvi), -1000, 1000, -15, 15)
		end
	end,
	visible = function()
		return get(dc_bus)
	end,
},
---------------------------------------------------------------------
needle{ 
	image = get(white_needle), --стрелка перегрузки
	position = {820, 400, 55, 55},
	angle = function()
		return get(ny)
	end,
	visible = function()
		return get(dc_bus)
	end,
},
---------------------------------------------------------------------
needle{ 
	image = get(nav_circle), --курсовой лимб
	position = {912, 165, 246, 246},
	angle = function()
		return get(heading) * (-1)
	end,
	visible = function()
		return get(dc_bus)
	end,
},--[[--]]
---------------------------------------------------------------------
    -- курс
    digitstape {
        position = { 1024, 418, 22, 12},
        image = digitsImage,
        digits = 3,
        showLeadingZeros = false,
		allowNonRound = true,
        value = function()
			return get(heading)
		end,
		visible = function()
			return get(dc_bus)
		end,
    };
---------------------------------------------------------------------
needle{ 
	image = get(vor1_needle), --стрелка основной комплект
	position = {938, 196, 193, 193},
	angle = function()
		if vor1_btn == 1 then
			return  get(nav1_bearing)
		elseif adf1_btn == 1 then
			return  get(adf1_bearing)
		end
	end,
	visible = function()
		return get(dc_bus)
	end,
},
---------------------------------------------------------------------
needle{ 
	image = get(vor2_needle), --стрелка резервный комплект
	position = {938, 187, 193, 210},
	angle = function()
		if vor2_btn == 1 then
			return get(nav2_bearing)
		elseif adf2_btn == 1 then
			return get(adf2_bearing)
		end
	end,
	visible = function()
		return get(dc_bus)
	end,
},
---------------------------------------------------------------------
freeTexture{ --скольжение
	image = get(slip_ball),
	positionX = function()
		return get(slip)
	end,
	positionY = 459,
	width = 14,
	height = 14,
	visible = function()
		return get(dc_bus)
	end,
},
---------------------------------------------------------------------

---------------------------------------------------------------------
--MV1
switch {
	position = {352, 327, 38, 38},
        state = function()
		return get(mv1) ~= 0
        end,
	
onMouseClick = function()
	if not switch_push then
		playSample(switch_plastic, 0)
		switch_push = true
		if get(mv1) ~= 0 then
			set(mv1, 0)
		else
			set(mv1, 1)
		end
	end
return true;
end,	

onMouseUp = function()
	switch_push = false
	return true;
end,
},
---------------------------------------------------------------------
--MV2
switch {
	position = {409, 327, 38, 38},
        state = function()
		return get(mv2) ~= 0
        end,
	
onMouseClick = function()
	if not switch_push then
		playSample(switch_plastic, 0)
		switch_push = true
		if get(mv2) ~= 0 then
			set(mv2, 0)
		else
			set(mv2, 1)
		end
	end
return true;
end,	

onMouseUp = function()
	switch_push = false
	return true;
end,
},
---------------------------------------------------------------------
--MV3
switch {
	position = {466, 327, 38, 38},
        state = function()
		return get(mv3) ~= 0
        end,
	
onMouseClick = function()
	if not switch_push then
		playSample(switch_plastic, 0)
		switch_push = true
		if get(mv3) ~= 0 then
			set(mv3, 0)
		else
			set(mv3, 1)
		end
	end
return true;
end,	

onMouseUp = function()
	switch_push = false
	return true;
end,
},
---------------------------------------------------------------------
--DKMV1
switch {
	position = {523, 327, 38, 38},
        state = function()
		return get(dkmv1) ~= 0
        end,
	
onMouseClick = function()
	if not switch_push then
		playSample(switch_plastic, 0)
		switch_push = true
		if get(dkmv1) ~= 0 then
			set(dkmv1, 0)
		else
			set(dkmv1, 1)
		end
	end
return true;
end,	

onMouseUp = function()
	switch_push = false
	return true;
end,
},
---------------------------------------------------------------------
--DME1
switch {
	position = {352, 271, 38, 38},
        state = function()
		return get(dme1) ~= 0
        end,
	
onMouseClick = function()
	if not switch_push then
		playSample(switch_plastic, 0)
		switch_push = true
		if get(dme1) ~= 0 then
			set(dme1, 0)
		else
			set(dme1, 1)
		end
	end
return true;
end,	

onMouseUp = function()
	switch_push = false
	return true;
end,
},
---------------------------------------------------------------------
--ARK1
switch {
	position = {409, 271, 38, 38},
        state = function()
		return get(ark1) ~= 0
        end,
	
onMouseClick = function()
	if not switch_push then
		playSample(switch_plastic, 0)
		switch_push = true
		if get(ark1) ~= 0 then
			set(ark1, 0)
		else
			set(ark1, 1)
		end
	end
return true;
end,	

onMouseUp = function()
	switch_push = false
	return true;
end,
},
---------------------------------------------------------------------
--VOR1
switch {
	position = {466, 271, 38, 38},
        state = function()
		return get(vor1) ~= 0
        end,
	
onMouseClick = function()
	if not switch_push then
		playSample(switch_plastic, 0)
		switch_push = true
		if get(vor1) ~= 0 then
			set(vor1, 0)
		else
			set(vor1, 1)
		end
	end
return true;
end,	

onMouseUp = function()
	switch_push = false
	return true;
end,
},
---------------------------------------------------------------------
--DKMV2
switch {
	position = {523, 271, 38, 38},
        state = function()
		return get(dkmv2) ~= 0
        end,
	
onMouseClick = function()
	if not switch_push then
		playSample(switch_plastic, 0)
		switch_push = true
		if get(dkmv2) ~= 0 then
			set(dkmv2, 0)
		else
			set(dkmv2, 1)
		end
	end
return true;
end,	

onMouseUp = function()
	switch_push = false
	return true;
end,
},
---------------------------------------------------------------------
--DME2
switch {
	position = {352, 214, 38, 38},
        state = function()
		return get(dme2) ~= 0
        end,
	
onMouseClick = function()
	if not switch_push then
		playSample(switch_plastic, 0)
		switch_push = true
		if get(dme2) ~= 0 then
			set(dme2, 0)
		else
			set(dme2, 1)
		end
	end
return true;
end,	

onMouseUp = function()
	switch_push = false
	return true;
end,
},
---------------------------------------------------------------------
--ARK2
switch {
	position = {409, 214, 38, 38},
        state = function()
		return get(ark2) ~= 0
        end,
	
onMouseClick = function()
	if not switch_push then
		playSample(switch_plastic, 0)
		switch_push = true
		if get(ark2) ~= 0 then
			set(ark2, 0)
		else
			set(ark2, 1)
		end
	end
return true;
end,	

onMouseUp = function()
	switch_push = false
	return true;
end,
},
---------------------------------------------------------------------
--VOR2
switch {
	position = {466, 214, 38, 38},
        state = function()
		return get(vor2) ~= 0
        end,
	
onMouseClick = function()
	if not switch_push then
		playSample(switch_plastic, 0)
		switch_push = true
		if get(vor2) ~= 0 then
			set(vor2, 0)
		else
			set(vor2, 1)
		end
	end
return true;
end,	

onMouseUp = function()
	switch_push = false
	return true;
end,
},
---------------------------------------------------------------------
--DEPLOY ACB
switch {
	position = {523, 214, 38, 38},
        state = function()
		return get(sbros_acb) ~= 0
        end,
	
onMouseClick = function()
	if not switch_push then
		playSample(switch_plastic, 0)
		switch_push = true
		if get(sbros_acb) ~= 0 then
			set(sbros_acb, 0)
		else
			set(sbros_acb, 1)
		end
	end
return true;
end,	

onMouseUp = function()
	switch_push = false
	return true;
end,
},
---------------------------------------------------------------------
--CVBP
switch {
	position = {593, 327, 38, 38},
        state = function()
		return get(cvbp) ~= 0
        end,
	
onMouseClick = function()
	if not switch_push then
		playSample(switch_plastic, 0)
		switch_push = true
		if get(cvbp) ~= 0 then
			set(cvbp, 0)
		else
			set(cvbp, 1)
		end
	end
return true;
end,	

onMouseUp = function()
	switch_push = false
	return true;
end,
},
---------------------------------------------------------------------
--PASS
switch {
	position = {593, 271, 38, 38},
        state = function()
		return get(pass) ~= 0
        end,
	
onMouseClick = function()
	if not switch_push then
		playSample(switch_plastic, 0)
		switch_push = true
		if get(pass) ~= 0 then
			set(pass, 0)
		else
			set(pass, 1)
		end
	end
return true;
end,	

onMouseUp = function()
	switch_push = false
	return true;
end,
},
---------------------------------------------------------------------
--KM
switch {
	position = {593, 214, 38, 38},
        state = function()
		return get(km) ~= 0
        end,
	
onMouseClick = function()
	if not switch_push then
		playSample(switch_plastic, 0)
		switch_push = true
		if get(km) ~= 0 then
			set(km, 0)
		else
			set(km, 1)
		end
	end
return true;
end,	

onMouseUp = function()
	switch_push = false
	return true;
end,
},
---------------------------------------------------------------------
--ДВИГ
switch {
	position = {1350, 919, 40, 40},
        state = function()
		return mfi_mnemo_eng ~= 0
        end,
	
onMouseClick = function()
	if not switch_push then
		playSample(switch_plastic, 0)
		switch_push = true
		if mfi_mnemo_eng ~= 0 then
			mfi_mnemo_eng = 0
		else
				mfi_mnemo_eng = 1
				mfi_mnemo_fuel = 0
				mfi_mnemo_conf = 0
				mfi_mnemo_air = 0
				mfi_mnemo_elec = 0
				mfi_mnemo_tcas = 0
				mfi_mnemo_hydr = 0
				mfi_mnemo_stat = 0
				mfi_mnemo_sys = 0	
		end
	end
return true;
end,	

onMouseUp = function()
	switch_push = false
	return true;
end,
},
---------------------------------------------------------------------
--ТОПЛ
switch {
	position = {1350, 974, 40, 40},
        state = function()
		return mfi_mnemo_fuel ~= 0
        end,
	
onMouseClick = function()
	if not switch_push then
		playSample(switch_plastic, 0)
		switch_push = true
		if mfi_mnemo_fuel ~= 0 then
			mfi_mnemo_fuel = 0
		else
				mfi_mnemo_fuel = 1
				mfi_mnemo_eng = 0
				mfi_mnemo_conf = 0
				mfi_mnemo_air = 0
				mfi_mnemo_elec = 0
				mfi_mnemo_tcas = 0
				mfi_mnemo_hydr = 0
				mfi_mnemo_stat = 0
				mfi_mnemo_sys = 0
		end
	end
return true;
end,	

onMouseUp = function()
	switch_push = false
	return true;
end,
},
---------------------------------------------------------------------
--КОНФ
switch {
	position = {1300, 974, 40, 40},
        state = function()
		return mfi_mnemo_conf ~= 0
        end,
	
onMouseClick = function()
	if not switch_push then
		playSample(switch_plastic, 0)
		switch_push = true
		if mfi_mnemo_conf ~= 0 then
			mfi_mnemo_conf = 0
		else
				mfi_mnemo_fuel = 0
				mfi_mnemo_eng = 0
				mfi_mnemo_conf = 1
				mfi_mnemo_air = 0
				mfi_mnemo_elec = 0
				mfi_mnemo_tcas = 0
				mfi_mnemo_hydr = 0
				mfi_mnemo_stat = 0
				mfi_mnemo_sys = 0
		end
	end
return true;
end,	

onMouseUp = function()
	switch_push = false
	return true;
end,
},
---------------------------------------------------------------------
--ВОЗД
switch {
	position = {1293, 920, 40, 40},
        state = function()
		return mfi_mnemo_air ~= 0
        end,
	
onMouseClick = function()
	if not switch_push then
		playSample(switch_plastic, 0)
		switch_push = true
		if mfi_mnemo_air ~= 0 then
			mfi_mnemo_air = 0
		else
				mfi_mnemo_fuel = 0
				mfi_mnemo_eng = 0
				mfi_mnemo_conf = 0
				mfi_mnemo_air = 1
				mfi_mnemo_elec = 0
				mfi_mnemo_tcas = 0
				mfi_mnemo_hydr = 0
				mfi_mnemo_stat = 0
				mfi_mnemo_sys = 0
		end
	end
return true;
end,	

onMouseUp = function()
	switch_push = false
	return true;
end,
},
---------------------------------------------------------------------
--СЭС
switch {
	position = {1344, 1018, 40, 40},
        state = function()
		return mfi_mnemo_elec ~= 0
        end,
	
onMouseClick = function()
	if not switch_push then
		playSample(switch_plastic, 0)
		switch_push = true
		if mfi_mnemo_elec ~= 0 then
			mfi_mnemo_elec = 0
		else
				mfi_mnemo_fuel = 0
				mfi_mnemo_eng = 0
				mfi_mnemo_conf = 0
				mfi_mnemo_air = 0
				mfi_mnemo_elec = 1
				mfi_mnemo_tcas = 0
				mfi_mnemo_hydr = 0
				mfi_mnemo_stat = 0
				mfi_mnemo_sys = 0
		end
	end
return true;
end,	

onMouseUp = function()
	switch_push = false
	return true;
end,
},
---------------------------------------------------------------------
--ГИДР
switch {
	position = {1293, 1018, 40, 40},
        state = function()
		return mfi_mnemo_hydr ~= 0
        end,
	
onMouseClick = function()
	if not switch_push then
		playSample(switch_plastic, 0)
		switch_push = true
		if mfi_mnemo_hydr ~= 0 then
			mfi_mnemo_hydr = 0
		else
				mfi_mnemo_fuel = 0
				mfi_mnemo_eng = 0
				mfi_mnemo_conf = 0
				mfi_mnemo_air = 0
				mfi_mnemo_elec = 0
				mfi_mnemo_tcas = 0
				mfi_mnemo_hydr = 1
				mfi_mnemo_stat = 0
				mfi_mnemo_sys = 0
		end
	end
return true;
end,	

onMouseUp = function()
	switch_push = false
	return true;
end,
},
---------------------------------------------------------------------
--TCAS
switch {
	position = {1551, 919, 40, 40},
        state = function()
		return mfi_mnemo_tcas ~= 0
        end,
	
onMouseClick = function()
	if not switch_push then
		playSample(switch_plastic, 0)
		switch_push = true
		if mfi_mnemo_tcas ~= 0 then
			mfi_mnemo_tcas = 0
		else
				mfi_mnemo_fuel = 0
				mfi_mnemo_eng = 0
				mfi_mnemo_conf = 0
				mfi_mnemo_air = 0
				mfi_mnemo_elec = 0
				mfi_mnemo_tcas = 1
				mfi_mnemo_hydr = 0
				mfi_mnemo_stat = 0
				mfi_mnemo_sys = 0
		end
	end
return true;
end,	

onMouseUp = function()
	switch_push = false
	return true;
end,
},
---------------------------------------------------------------------
--STAT
switch {
	position = {1239, 939, 40, 40},
        state = function()
		return mfi_mnemo_stat ~= 0
        end,
	
onMouseClick = function()
	if not switch_push then
		playSample(switch_plastic, 0)
		switch_push = true
		if mfi_mnemo_stat ~= 0 then
			mfi_mnemo_stat = 0
		else
				mfi_mnemo_fuel = 0
				mfi_mnemo_eng = 0
				mfi_mnemo_conf = 0
				mfi_mnemo_air = 0
				mfi_mnemo_elec = 0
				mfi_mnemo_tcas = 0
				mfi_mnemo_hydr = 0
				mfi_mnemo_stat = 1
				mfi_mnemo_sys = 0
		end
	end
return true;
end,	

onMouseUp = function()
	switch_push = false
	return true;
end,
},
---------------------------------------------------------------------
--SYSTEM
switch {
	position = {1239, 990, 40, 40},
        state = function()
		return mfi_mnemo_sys ~= 0
        end,
	
onMouseClick = function()
	if not switch_push then
		playSample(switch_plastic, 0)
		switch_push = true
		if mfi_mnemo_sys ~= 0 then
			mfi_mnemo_sys = 0
		else
				mfi_mnemo_fuel = 0
				mfi_mnemo_eng = 0
				mfi_mnemo_conf = 0
				mfi_mnemo_air = 0
				mfi_mnemo_elec = 0
				mfi_mnemo_tcas = 0
				mfi_mnemo_hydr = 0
				mfi_mnemo_stat = 0
				mfi_mnemo_sys = 1
		end
	end
return true;
end,	

onMouseUp = function()
	switch_push = false
	return true;
end,
},
---------------------------------------------------------------------
    -- altitude digits
    digitstape {
        position = { 1158, 576, 45, 30},
        image = digitsImage,
        digits = 5,
        showLeadingZeros = true,
		allowNonRound = true,
        value = function()
			return get(alt_m)
		end,
		visible = function()
			return get(dc_bus)
		end,
    };
---------------------------------------------------------------------
    -- speed digits
    digitstape {
        position = { 870, 578, 40, 25},
        image = digitsImage,
        digits = 3,
        showLeadingZeros = true,
		allowNonRound = true,
        value = function()
			return get(airspeed)
		end,
		visible = function()
			return get(dc_bus)
		end,
    };
---------------------------------------------------------------------
    -- ny digits
    digitstape {
        position = { 855, 435, 30, 15},
        image = digitsImage,
        digits = 2,
        showLeadingZeros = true,
		allowNonRound = true,
		fractional = 1,
        value = function()
			return get(gforce)
		end,
		visible = function()
			return get(dc_bus)
		end,
    };
---------------------------------------------------------------------
}
