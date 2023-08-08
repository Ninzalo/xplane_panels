size = {1920, 1080}
-----------------
-- VARIABLES
-----------------
defineProperty("mid_subpanel", globalPropertyi("sim/an148/mid_subpanel"))
defineProperty("landing_gear", globalPropertyi("sim/cockpit2/controls/gear_handle_down"))
defineProperty("pitch_electric_sim", globalPropertyf("sim/cockpit2/gauges/indicators/pitch_electric_deg_pilot"))
defineProperty("roll_electric_sim", globalPropertyf("sim/cockpit2/gauges/indicators/roll_electric_deg_pilot"))
defineProperty("pitch2", globalPropertyf("sim/an148/ag_tape1"))
defineProperty("heading", globalPropertyf("sim/cockpit2/gauges/indicators/heading_AHARS_deg_mag_pilot"))

defineProperty("flaps_deg", globalPropertyf("sim/flightmodel2/wing/flap1_deg[0]"))
defineProperty("aileron_deg", globalPropertyf("sim/flightmodel2/wing/aileron1_deg[0]"))
defineProperty("elevator_deg", globalPropertyf("sim/flightmodel2/wing/elevator1_deg[0]"))
defineProperty("rudder_deg", globalPropertyf("sim/flightmodel2/wing/rudder1_deg[0]"))
defineProperty("speedbrake_deg", globalPropertyf("sim/flightmodel2/wing/speedbrake1_deg[0]"))
defineProperty("flap_lever", globalPropertyf("sim/cockpit2/controls/flap_ratio"))

defineProperty("rudder_marker", globalPropertyf("sim/an148/rudder_marker"))
defineProperty("elevator_marker", globalPropertyf("sim/an148/elevator_marker"))
defineProperty("aileron_marker", globalPropertyf("sim/an148/aileron_marker"))

defineProperty("total_fuel", globalPropertyf("sim/flightmodel/weight/m_fuel_total"))
defineProperty("fuel_left", globalPropertyf("sim/flightmodel/weight/m_fuel1"))
defineProperty("fuel_mid", globalPropertyf("sim/flightmodel/weight/m_fuel2"))
defineProperty("fuel_right", globalPropertyf("sim/flightmodel/weight/m_fuel3"))

defineProperty("acf_gear_deploy", globalPropertyf("sim/aircraft/parts/acf_gear_deploy"))
defineProperty("sideslip_degrees", globalPropertyf("sim/cockpit2/gauges/indicators/sideslip_degrees"))

defineProperty("eng1_temp", globalPropertyf("sim/an148/eng1_temp"))
defineProperty("eng2_temp", globalPropertyf("sim/an148/eng2_temp"))
defineProperty("eng1_n1", globalPropertyf("sim/an148/eng1_n1"))
defineProperty("eng2_n1", globalPropertyf("sim/an148/eng2_n1"))
defineProperty("eng1_pr", globalPropertyf("sim/an148/eng1_pr"))
defineProperty("eng2_pr", globalPropertyf("sim/an148/eng2_pr"))

defineProperty("ENGN_EGT_c1", globalPropertyf("sim/flightmodel/engine/ENGN_EGT_c[0]"))
defineProperty("ENGN_EGT_c2", globalPropertyf("sim/flightmodel/engine/ENGN_EGT_c[1]"))
defineProperty("ENGN_N1_1", globalPropertyf("sim/flightmodel/engine/ENGN_N1_[0]"))
defineProperty("ENGN_N1_2", globalPropertyf("sim/flightmodel/engine/ENGN_N1_[1]"))
defineProperty("ENGN_EPR_1", globalPropertyf("sim/flightmodel/engine/ENGN_EPR[0]"))
defineProperty("ENGN_EPR_2", globalPropertyf("sim/flightmodel/engine/ENGN_EPR[1]"))

defineProperty("throttle_ratio0", globalPropertyf("sim/cockpit2/engine/actuators/throttle_ratio[0]"))
defineProperty("throttle_ratio1", globalPropertyf("sim/cockpit2/engine/actuators/throttle_ratio[1]"))

defineProperty("dc_bus", globalPropertyi("sim/an148/dc_bus"))

defineProperty("fd_pilot", globalPropertyi("sim/an148/fd_pilot"))
defineProperty("fd_copilot", globalPropertyi("sim/an148/fd_copilot"))

defineProperty("adf1_bearing", globalPropertyf("sim/cockpit/radios/adf1_dir_degt"))
defineProperty("adf1_dme_distance", globalPropertyf("sim/cockpit2/radios/indicators/adf1_dme_distance_nm"))
defineProperty("nav1_bearing", globalPropertyf("sim/cockpit/radios/nav1_dir_degt"))
defineProperty("nav1_distance", globalPropertyf("sim/cockpit2/radios/indicators/nav1_dme_distance_nm"))
defineProperty("vor_distance", globalPropertyf("sim/cockpit2/radios/indicators/dme_dme_distance_nm"))

defineProperty("airspeed", globalPropertyf("sim/cockpit2/gauges/indicators/airspeed_kts_pilot"))
defineProperty("barometer", globalPropertyf("sim/cockpit2/gauges/actuators/barometer_setting_in_hg_pilot"))
defineProperty("mach", globalPropertyf("sim/flightmodel/misc/machno"))

defineProperty("test_value", globalPropertyi("sim/an148/test_value"))
defineProperty("test_value1", globalPropertyf("sim/an148/test_value1"))

--[[
defineProperty("AT_on", globalPropertyi("sim/cockpit2/autopilot/autothrottle_on")) --Auto-throttle really working?  Takes into account failures, esys, etc.
defineProperty("HEADING_mode", globalPropertyi("sim/cockpit2/autopilot/heading_mode")) --Autopilot heading mode.
defineProperty("ALT_mode", globalPropertyi("sim/cockpit2/autopilot/altitude_mode")) --Autopilot altitude mode.
defineProperty("bank_angle_mode", globalPropertyi("sim/cockpit2/autopilot/bank_angle_mode")) --Maximum bank angle mode, 0->6. Higher number is steeper allowable bank.
defineProperty("backcourse_on", globalPropertyi("sim/cockpit2/autopilot/backcourse_on")) --Back course is armed, 0 or 1.
defineProperty("heading_dial_deg_mag_pilot", globalPropertyf("sim/cockpit2/autopilot/heading_dial_deg_mag_pilot")) --Heading hold commanded, in degrees magnetic.
defineProperty("TOGA_pitch_deg", globalPropertyf("sim/cockpit2/autopilot/TOGA_pitch_deg")) --Nose-up pitch to hold when TOGA operations are in effect.  Set this back when your aircraft unloads!
defineProperty("roll_status", globalPropertyi("sim/cockpit2/autopilot/roll_status")) --Autopilot Roll-Hold Status. 0=off,1=armed,2=captured
defineProperty("heading_status", globalPropertyi("sim/cockpit2/autopilot/heading_status")) --Autopilot Heading Status. 0=off,1=armed,2=captured
defineProperty("backcourse_status", globalPropertyi("sim/cockpit2/autopilot/backcourse_status")) --Autopilot Back-course Status. 0=off,1=armed,2=captured
defineProperty("TOGA_lateral_status", globalPropertyi("sim/cockpit2/autopilot/TOGA_lateral_status")) --Autopilot Lateral TOGA mode: 0=off,1=armed,2=captured
defineProperty("pitch_status", globalPropertyi("sim/cockpit2/autopilot/pitch_status")) --Autopilot Pitch-Hold Status. 0=off,1=armed,2=captured
defineProperty("speed_status", globalPropertyi("sim/cockpit2/autopilot/speed_status")) --Autopilot Speed-hold (via pitch) status. 0=off,1=armed,2=captured
defineProperty("vnav_status", globalPropertyi("sim/cockpit2/autopilot/vnav_status")) --Autopilot VNAV status. 0=off,1=armed,2=captured
defineProperty("TOGA_status", globalPropertyi("sim/cockpit2/autopilot/TOGA_status")) --Autopilot TOGA vertical (go-around) status. 0=off,1=armed,2=captured
--]]
defineProperty("AT_switch", globalPropertyi("sim/cockpit2/autopilot/autothrottle_enabled"))	--Auto-throttle on, 0 or 1.  This is the switch.
defineProperty("AP_on", globalPropertyi("sim/cockpit2/autopilot/autopilot_on")) --Is the autopilot really on? Takes into account electrical system, failures, etc.;
defineProperty("glideslope_status", globalPropertyi("sim/cockpit2/autopilot/glideslope_status")) --Autopilot glideslope status. 0=off,1=armed,2=captured
defineProperty("nav_status", globalPropertyi("sim/cockpit2/autopilot/nav_status")) --Autopilot Nav Status. 0=off,1=armed,2=captured
defineProperty("approach_status", globalPropertyi("sim/cockpit2/autopilot/approach_status")) --Autopilot approach status.  0=off,1=armed,2=captured
defineProperty("altitude_hold_status", globalPropertyi("sim/cockpit2/autopilot/altitude_hold_status")) --Autopilot Altitude hold status. 0=off,1=armed,2=captured
defineProperty("altitude_dial_ft", globalPropertyf("sim/cockpit2/autopilot/altitude_dial_ft")) --Altitude commanded in FPM.
defineProperty("vvi_dial_fpm", globalPropertyf("sim/cockpit2/autopilot/vvi_dial_fpm")) --VVI commanded in FPM.
defineProperty("airspeed_dial_kts_mach", globalPropertyf("sim/cockpit2/autopilot/airspeed_dial_kts_mach")) --Airspeed hold value, knots or Mach depending on km_is_mach.
defineProperty("vvi_status", globalPropertyi("sim/cockpit2/autopilot/vvi_status")) --Autopilot VVI Status. 0=off,1=armed,2=captured
defineProperty("Mach_speed", globalPropertyi("sim/cockpit2/autopilot/airspeed_is_mach")) --Autopilot airspeed is Mach number rather than knots.

-----------------
-- IMAGES
-----------------
defineProperty("background", loadImage("mid_panel.png"))
defineProperty("lg_down", loadImage("lg_down.png"))
defineProperty("lg_up", loadImage("lg_up.png"))
defineProperty("ag_cover", loadImage("ag_cover.png"))
defineProperty("ag_tape1", loadImage("ag_tape1.png", 0, 0, 256, 450))
defineProperty("mid_mfi_eng", loadImage("mid_mfi_eng.png"))
defineProperty("digitsImage", loadImage("white_digit_strip.png", 0, 0, 16, 196))
defineProperty("green_digits", loadImage("green_digits.png", 0, 0, 16, 196))
defineProperty("blue_digits", loadImage("blue_digits.png", 0, 0, 16, 196))
defineProperty("emer_blenker", loadImage("emer_blenker.png"))
defineProperty("heading_marker", loadImage("heading_marker.png"))
defineProperty("pitch_marker", loadImage("pitch_marker.png"))
defineProperty("roll_marker", loadImage("roll_marker.png"))
defineProperty("green_lg_light", loadImage("green_lg_light.png"))
defineProperty("yellow_lg_light", loadImage("yellow_lg_light.png"))
defineProperty("green_sector", loadImage("green_sector.png"))
defineProperty("black_bg", loadImage("black_bg.png"))
defineProperty("slip_ball", loadImage("slip_ball.png"))
defineProperty("res_npi", loadImage("res_npi.png"))
defineProperty("res_speed", loadImage("res_speed.png"))
defineProperty("res_speed_needle", loadImage("res_speed_needle.png"))
defineProperty("tumbler_up", loadImage("tumbler_up.png"))
defineProperty("tumbler_down", loadImage("tumbler_down.png"))
defineProperty("ap_light", loadImage("on_rectangle_light.png"))

defineProperty("vor1_needle", loadImage("vor1_needle.png"))
defineProperty("vor2_needle", loadImage("vor2_needle.png"))

lg_toggle = findCommand("sim/flight_controls/landing_gear_toggle")

local function map(x, in_min, in_max, out_min, out_max)
    return (x - in_min) * (out_max - out_min) / (in_max - in_min) + out_min
end

Localizer_arm = findCommand("sim/autopilot/NAV")
Glideslope_arm = findCommand("sim/autopilot/glide_slope")
AT_on = findCommand("sim/autopilot/autothrottle_on")
AT_off = findCommand("sim/autopilot/autothrottle_off")
AP_servos = findCommand("sim/autopilot/servos_toggle")
FD_on = findCommand("sim/autopilot/fdir_toggle")
AP_approach = findCommand("sim/autopilot/approach")
Altitude_arm = findCommand("sim/autopilot/altitude_hold")
VVI = findCommand("sim/autopilot/vertical_speed")
VVI_down = findCommand("sim/autopilot/vertical_speed_down")
VVI_up = findCommand("sim/autopilot/vertical_speed_up")
Airspeed_up = findCommand("sim/autopilot/airspeed_up")
Airspeed_down = findCommand("sim/autopilot/airspeed_down")
Altitude_up = findCommand("sim/autopilot/altitude_up")
Altitude_down = findCommand("sim/autopilot/altitude_down")

components = {
---------------------------------------------------------------------
--background
texture{ 
	image = get(background),
	position = {0, 0, size[1], size[2]},
},

---------------------------------------------------------------------
--lg_green
texture{ 
	image = get(green_lg_light),
	position = {1336, 347, 53, 54},
	visible = function()
		return get(acf_gear_deploy) == 0 or get(acf_gear_deploy) == 1 and get(dc_bus) == 1
	end,
},
---------------------------------------------------------------------
--lg_green
texture{ 
	image = get(green_lg_light),
	position = {1534, 347, 54, 54},
	visible = function()
		return get(acf_gear_deploy) == 0 or get(acf_gear_deploy) == 1 and get(dc_bus) == 1
	end,
},
---------------------------------------------------------------------
--lg_green
texture{ 
	image = get(green_lg_light),
	position = {1436, 371, 52, 54},
	visible = function()
		return get(acf_gear_deploy) == 0 or get(acf_gear_deploy) == 1 and get(dc_bus) == 1
	end,
},
---------------------------------------------------------------------
--lg_yellow
texture{ 
	image = get(yellow_lg_light),
	position = {1336, 347, 53, 54},
	visible = function()
		return get(acf_gear_deploy) > 0 and get(acf_gear_deploy) < 1 and get(dc_bus) == 1
	end,
},
---------------------------------------------------------------------
--lg_yellow
texture{ 
	image = get(yellow_lg_light),
	position = {1534, 347, 54, 54},
	visible = function()
		return get(acf_gear_deploy) > 0 and get(acf_gear_deploy) < 1 and get(dc_bus) == 1
	end,
},
---------------------------------------------------------------------
--lg_yellow
texture{ 
	image = get(yellow_lg_light),
	position = {1436, 371, 52, 54},
	visible = function()
		return get(acf_gear_deploy) > 0 and get(acf_gear_deploy) < 1 and get(dc_bus) == 1
	end,
},
---------------------------------------------------------------------
--lg_down
texture{ 
	image = get(lg_down),
	position = {1440, 205, 45, 129},
	visible = function()
		return get(landing_gear) == 1
	end,
},
---------------------------------------------------------------------
--lg_up
texture{ 
	image = get(lg_up),
	position = {1440, 215, 45, 129},
	visible = function()
		return get(landing_gear) == 0
	end,
},
---------------------------------------------------------------------
--LG control
switch {
	position = {1420, 235, 80, 80},
        state = function()
		return get(landing_gear) ~= 1
        end,
	
onMouseClick = function()
	commandOnce(lg_toggle)
end,	
},
---------------------------------------------------------------------
--FD Pilot
switch {
	position = {282, 861, 38, 38},
        state = function()
		return get(fd_pilot) ~= 0
        end,
	
onMouseClick = function()
	if get(fd_pilot) ~= 0 then
		set(fd_pilot, 0)
	else
		set(fd_pilot, 1)
	end
end,	
},
---------------------------------------------------------------------
--FD Copilot
switch {
	position = {1544, 861, 38, 38},
        state = function()
		return get(fd_copilot) ~= 0
        end,
	
onMouseClick = function()
	if get(fd_copilot) ~= 0 then
		set(fd_copilot, 0)
	else
		set(fd_copilot, 1)
	end
end,	
},
---------------------------------------------------------------------
tape { --ag_tape
        position = {337, 454, 250, 250},
        image = get(ag_tape1),
		window = {0.8, 0.8},
		scrollY = function()
			return get(pitch2)
		end,
		scrollX = function()
			return get(0.1)
		end,
    },		
--------------------------------------------------------------------
--ag_cover
texture{ 
	image = get(ag_cover),
	position = {316, 424, 295, 297},
},
---------------------------------------------------------------------
--NPI
texture{ 
	image = get(res_npi),
	position = {372, 137, 182, 182},
	visible = function()
		return get(dc_bus) == 1
	end,
},
---------------------------------------------------------------------
needle{ 
	image = get(vor1_needle), --АРК
	position = {393, 160, 131, 131},
	angle = function()
		return get(adf1_bearing)
	end,
	visible = function()
		return get(dc_bus) == 1
	end,
},
---------------------------------------------------------------------
needle{ 
	image = get(vor2_needle), --VOR
	position = {393, 160, 131, 131},
	angle = function()
		return get(nav1_bearing)
	end,
	visible = function()
		return get(dc_bus) == 1
	end,
},
---------------------------------------------------------------------
--SPEED INDICATOR
texture{ 
	image = get(res_speed),
	position = {1374, 498, 178, 178},
	visible = function()
		return get(dc_bus) == 1
	end,
},
---------------------------------------------------------------------
needle{ --Скорость
	image = get(res_speed_needle),
	position = {1389, 545, 90, 90},
	angle = function()
		return map(get(airspeed) * 1.852, 0, 850, 0, 360)
	end,
	visible = function()
		return get(dc_bus) == 1
	end,
},
---------------------------------------------------------------------
-- Mach
    digitstape {
        position = { 1434, 657, 30, 15},
        image = digitsImage,
        digits = 3,
        showLeadingZeros = true,
		allowNonRound = true,
		fractional = 3,
        value = function()
			return get(mach)
		end,
		visible = function()
			return get(dc_bus) == 1
		end,
    };
---------------------------------------------------------------------
-- Presuure
    digitstape {
        position = { 1390, 514, 35, 15},
        image = digitsImage,
        digits = 4,
        showLeadingZeros = false,
		allowNonRound = true,
        value = function()
			return get(barometer) * 33.864
		end,
		visible = function()
			return get(dc_bus) == 1
		end,
    };
---------------------------------------------------------------------
freeTexture{ --скольжение
	image = get(slip_ball),
	positionX = function()
		return map(get(sideslip_degrees), -10, 10, 432, 480)
	end,
	positionY = 460,
	width = 14,
	height = 14,
	visible = function()
		return true
	end,
},
---------------------------------------------------------------------
--emer_blenker
needle{ 
	image = get(emer_blenker),
	position = {379, 484, 168, 168},
	angle = function()
		return get(roll_electric_sim)
	end,
},
---------------------------------------------------------------------
needle{ 
	image = get(green_sector), --сектор1 левого двигателя
	position = {731, 592, 98, 98},
	angle = function()
		return map(get(ENGN_EPR_1), 0, 2.2, 0, 180)
	end,
	visible = function()
		return get(dc_bus) == 1
	end,
},
---------------------------------------------------------------------
needle{ 
	image = get(green_sector), --сектор2 правого двигателя
	position = {849, 592, 98, 98},
	angle = function()
		return map(get(ENGN_EPR_2), 0, 2.2, 0, 180)
	end,
	visible = function()
		return get(dc_bus) == 1
	end,
},
---------------------------------------------------------------------
texture{ --black_bg
	image = get(black_bg),
	position = {731, 553, 218, 88},
	visible = function()
		return true
	end,
},
---------------------------------------------------------------------
needle{ 
	image = get(green_sector), --сектор3 левого двигателя
	position = {731, 506, 98, 98},
	angle = function()
		return get(eng1_n1)
	end,
	visible = function()
		return get(dc_bus) == 1
	end,
},
---------------------------------------------------------------------
needle{ 
	image = get(green_sector), --сектор4 правого двигателя
	position = {849, 506, 98, 98},
	angle = function()
		return get(eng2_n1)
	end,
	visible = function()
		return get(dc_bus) == 1
	end,
},
---------------------------------------------------------------------
texture{ --black_bg
	image = get(black_bg),
	position = {731, 467, 218, 88},
	visible = function()
		return true
	end,
},
---------------------------------------------------------------------
needle{ 
	image = get(green_sector), --сектор5 левого двигателя
	position = {731, 452, 98, 98},
	angle = function()
		return get(eng1_temp)
	end,
	visible = function()
		return get(dc_bus) == 1
	end,
},
---------------------------------------------------------------------
needle{ 
	image = get(green_sector), --сектор6 правого двигателя
	position = {849, 452, 98, 98},
	angle = function()
		return get(eng2_temp)
	end,
	visible = function()
		return get(dc_bus) == 1
	end,
},
---------------------------------------------------------------------
--КАДР ДВИГ
texture{ 
	image = get(mid_mfi_eng),
	position = {721, 78, 483, 639},
	visible = function()
		return get(dc_bus) == 1
	end,
},
---------------------------------------------------------------------
    -- eng1_epr digits
    digitstape {
        position = { 763, 651, 35, 15},
        image = digitsImage,
        digits = 2,
        showLeadingZeros = false,
		allowNonRound = true,
		fractional = 1,
        value = function()
			return get(ENGN_EPR_1)
		end,
		valueEnabler = function()
			return get(dc_bus) == 1
		end,
    };
---------------------------------------------------------------------
    -- eng2_epr digits
    digitstape {
        position = { 884, 651, 35, 15},
        image = digitsImage,
        digits = 2,
        showLeadingZeros = false,
		allowNonRound = true,
		fractional = 1,
        value = function()
			return get(ENGN_EPR_2)
		end,
		valueEnabler = function()
			return get(dc_bus) == 1
		end,
    };
---------------------------------------------------------------------
    -- eng1_tr digits
    digitstape {
        position = { 767, 619, 30, 15},
        image = digitsImage,
        digits = 2,
        showLeadingZeros = false,
		allowNonRound = true,
        value = function()
			return map(get(throttle_ratio0), 0, 1, 0, 35)
		end,
		valueEnabler = function()
			return get(dc_bus) == 1
		end,
    };
---------------------------------------------------------------------
    -- eng2_tr digits
    digitstape {
        position = { 887, 619, 30, 15},
        image = digitsImage,
        digits = 2,
        showLeadingZeros = false,
		allowNonRound = true,
        value = function()
			return map(get(throttle_ratio1), 0, 1, 0, 35)
		end,
		valueEnabler = function()
			return get(dc_bus) == 1
		end,
    };
---------------------------------------------------------------------
    -- eng1_temp digits
    digitstape {
        position = { 760, 515, 40, 20},
        image = digitsImage,
        digits = 3,
        showLeadingZeros = false,
		allowNonRound = true,
        value = function()
			return get(ENGN_EGT_c1)
		end,
		valueEnabler = function()
			return get(dc_bus) == 1
		end,
    };
---------------------------------------------------------------------
    -- eng2_temp digits
    digitstape {
        position = { 880, 515, 40, 20},
        image = digitsImage,
        digits = 3,
        showLeadingZeros = false,
		allowNonRound = true,
        value = function()
			return get(ENGN_EGT_c1)
		end,
		valueEnabler = function()
			return get(dc_bus) == 1
		end,
    };
---------------------------------------------------------------------
    -- eng1_n1 digits
    digitstape {
        position = { 760, 568, 35, 15},
        image = digitsImage,
        digits = 3,
        showLeadingZeros = false,
		allowNonRound = true,
        value = function()
			return get(ENGN_N1_1)
		end,
		valueEnabler = function()
			return get(dc_bus) == 1
		end,
    };
---------------------------------------------------------------------
    -- eng2_n1 digits
    digitstape {
        position = { 880, 568, 35, 15},
        image = digitsImage,
        digits = 3,
        showLeadingZeros = false,
		allowNonRound = true,
        value = function()
			return get(ENGN_N1_2)
		end,
		valueEnabler = function()
			return get(dc_bus) == 1
		end,
    };
---------------------------------------------------------------------
    -- total fuel digits
    digitstape {
        position = { 830, 465, 40, 20},
        image = digitsImage,
        digits = 5,
        showLeadingZeros = false,
		allowNonRound = true,
        value = function()
			return get(total_fuel) --/ 2.205
		end,
		valueEnabler = function()
			return get(dc_bus) == 1
		end,
    };
---------------------------------------------------------------------
    -- left fuel digits
    digitstape {
        position = { 744, 440, 40, 20},
        image = digitsImage,
        digits = 4,
        showLeadingZeros = false,
		allowNonRound = true,
        value = function()
			return get(fuel_left) --/ 2.205
		end,
		valueEnabler = function()
			return get(dc_bus) == 1
		end,
    };
---------------------------------------------------------------------
    -- mid fuel digits
    digitstape {
        position = { 828, 440, 40, 20},
        image = digitsImage,
        digits = 4,
        showLeadingZeros = false,
		allowNonRound = true,
        value = function()
			return get(fuel_mid) --/ 2.205
		end,
		valueEnabler = function()
			return get(dc_bus) == 1
		end,
    };
---------------------------------------------------------------------
    -- right fuel digits
    digitstape {
        position = { 910, 440, 40, 20},
        image = digitsImage,
        digits = 4,
        showLeadingZeros = false,
		allowNonRound = true,
        value = function()
			return get(fuel_right) --/ 2.205
		end,
		valueEnabler = function()
			return get(dc_bus) == 1
		end,
    };
---------------------------------------------------------------------
    -- flaps_deg digits
    digitstape {
        position = { 800, 330, 20, 10},
        image = digitsImage,
        digits = 2,
        showLeadingZeros = false,
		allowNonRound = true,
        value = function()
			return get(flaps_deg)
		end,
		valueEnabler = function()
			return get(dc_bus) == 1
		end,
    };
---------------------------------------------------------------------
    -- flaps_lever_deg digits
    digitstape {
        position = { 760, 340, 25, 15},
        image = digitsImage,
        digits = 2,
        showLeadingZeros = false,
		allowNonRound = true,
        value = function()
			if get(flap_lever) > 0 and get(flap_lever) < 0.4 then
				return 10
			elseif get(flap_lever) > 0.5 and get(flap_lever) < 1 then
				return 20
			elseif get(flap_lever) == 1 then
				return 40
			else
				return 0
			end
		end,
		valueEnabler = function()
			return get(dc_bus) == 1
		end,
    };
---------------------------------------------------------------------
    -- VOR distance digits
    digitstape {
        position = { 510, 285, 40, 20},
        image = green_digits,
        digits = 4,
        showLeadingZeros = false,
		allowNonRound = true,
		fractional = 1,
        value = function()
			return get(vor_distance) * 1.852
		end,
		valueEnabler = function()
			return get(dc_bus) == 1
		end,
    };
---------------------------------------------------------------------
    -- ADF distance digits
    digitstape {
        position = { 379, 285, 40, 20},
        image = blue_digits,
        digits = 4,
        showLeadingZeros = false,
		allowNonRound = true,
		fractional = 1,
        value = function()
			return get(adf1_dme_distance) * 1.852
		end,
		valueEnabler = function()
			return get(dc_bus) == 1
		end,
    };
---------------------------------------------------------------------
    -- course
    digitstape {
        position = { 452, 304, 25, 10},
        image = digitsImage,
        digits = 3,
        showLeadingZeros = false,
		allowNonRound = true,
        value = function()
			return get(heading)
		end,
		valueEnabler = function()
			return get(dc_bus) == 1
		end,
    };
---------------------------------------------------------------------
freeTexture{ --положение руля направления
	image = get(heading_marker),
	positionX = function()
		return get(rudder_marker)
	end,
	positionY = 264,
	width = 10,
	height = 10,
	visible = function()
		return get(dc_bus) == 1
	end,
},
---------------------------------------------------------------------
freeTexture{ --положение руля высоты
	image = get(pitch_marker),
	positionX = 905,
	positionY = function()
		return get(elevator_marker)
	end,
	width = 10,
	height = 10,
	visible = function()
		return get(dc_bus) == 1
	end,
},
---------------------------------------------------------------------
needle{ --положение элеронов
	image = get(roll_marker),
	position = {719, 188, 100, 100},
	angle = function()
		return get(aileron_marker)
	end,
	visible = function()
		return get(dc_bus) == 1
	end,
},
---------------------------------------------------------------------
--FD Pilot_sw
texture{ 
	image = get(tumbler_up),
	position = {296, 874, 28, 60},
	visible = function()
		return get(fd_pilot) == 1
	end,
},
---------------------------------------------------------------------
--FD Pilot_sw
texture{ 
	image = get(tumbler_down),
	position = {296, 844, 28, 60},
	visible = function()
		return get(fd_pilot) == 0
	end,
},
---------------------------------------------------------------------
--FD CoPilot_sw
texture{ 
	image = get(tumbler_up),
	position = {1556, 874, 28, 60},
	visible = function()
		return get(fd_copilot) == 1
	end,
},
---------------------------------------------------------------------
--FD CoPilot_sw
texture{ 
	image = get(tumbler_down),
	position = {1556, 844, 28, 60},
	visible = function()
		return get(fd_copilot) == 0
	end,
},
---------------------------------------------------------------------

---------------------------------------------------------------------AUTOPILOT---------------------------------------------------------------------
---------------------------------------------------------------------
--AP_light
texture{ 
	image = get(ap_light),
	position = {290, 1009, 41, 18},
	visible = function()
		return get(AP_on) == 1
	end,
},
---------------------------------------------------------------------
--AP_light2
texture{ 
	image = get(ap_light),
	position = {1537, 1009, 41, 18},
	visible = function()
		return get(AP_on) == 1
	end,
},
---------------------------------------------------------------------
--AT_light
texture{ 
	image = get(ap_light),
	position = {357, 1009, 41, 18},
	visible = function()
		return get(AT_switch) == 1 
	end,
},
---------------------------------------------------------------------
--VNAV
texture{ 
	image = get(ap_light),
	position = {832, 921, 41, 18},
	visible = function()
		return get(glideslope_status) == 1 or get(glideslope_status) == 2
	end,
},
---------------------------------------------------------------------
--HNAV
texture{ 
	image = get(ap_light),
	position = {832, 858, 41, 18},
	visible = function()
		return get(nav_status) == 1 or get(nav_status) == 2
	end,
},
---------------------------------------------------------------------
--APPR status
texture{ 
	image = get(ap_light),
	position = {1222, 884, 41, 18},
	visible = function()
		return get(approach_status) == 1 or get(approach_status) == 2
	end,
},
---------------------------------------------------------------------
--Altitude
texture{ 
	image = get(ap_light),
	position = {771, 886, 41, 18},
	visible = function()
		return get(altitude_hold_status) == 2
	end,
},
---------------------------------------------------------------------
--VVI
texture{ 
	image = get(ap_light),
	position = {1083, 878, 41, 18},
	visible = function()
		return get(vvi_status) == 2
	end,
},
---------------------------------------------------------------------

---------------------------------------------------------------------
--Localizer
switch {
	position = {825, 854, 57, 57},
        state = function()
		return true;
        end,
	
onMouseClick = function()
	commandOnce(Localizer_arm)
return true;
end,	
},
---------------------------------------------------------------------
--Glideslope
switch {
	position = {825, 917, 57, 57},
        state = function()
		return true;
        end,
	
onMouseClick = function()
	commandOnce(Glideslope_arm)
return true;
end,	
},
---------------------------------------------------------------------
--AT_on
switch {
	position = {349, 1002, 57, 57},
        state = function()
		return true;
        end,
	
onMouseClick = function()
	commandOnce(AT_on)
return true;
end,	
},
---------------------------------------------------------------------
--AT_off
switch {
	position = {349, 942, 57, 57},
        state = function()
		return true;
        end,
	
onMouseClick = function()
	commandOnce(AT_off)
return true;
end,	
},
---------------------------------------------------------------------
--AP_on capt
switch {
	position = {282, 1002, 57, 57},
        state = function()
		return true;
        end,
	
onMouseClick = function()
	if get(AP_on) == 0 then
		commandOnce(AP_servos)
		commandOnce(FD_on)
	end
return true;
end,	
},
---------------------------------------------------------------------
--AP_off capt
switch {
	position = {282, 942, 57, 57},
        state = function()
		return true;
        end,
	
onMouseClick = function()
	if get(AP_on) == 1 then
		commandOnce(AP_servos)
		commandOnce(FD_on)
	end
return true;
end,	
},
---------------------------------------------------------------------
--AP_on f/o
switch {
	position = {1530, 1002, 57, 57},
        state = function()
		return true;
        end,
	
onMouseClick = function()
	if get(AP_on) == 0 then
		commandOnce(AP_servos)
		commandOnce(FD_on)
	end
return true;
end,	
},
---------------------------------------------------------------------
--AP_off f/o
switch {
	position = {1530, 942, 57, 57},
        state = function()
		return true;
        end,
	
onMouseClick = function()
	if get(AP_on) == 1 then
		commandOnce(AP_servos)
		commandOnce(FD_on)
	end
return true;
end,	
},
---------------------------------------------------------------------
--AP_approach
switch {
	position = {1215, 874, 57, 57},
        state = function()
		return true;
        end,
	
onMouseClick = function()
	commandOnce(AP_approach)
return true;
end,	
},
---------------------------------------------------------------------
--AP_altitude
switch {
	position = {763, 884, 57, 57},
        state = function()
		return true;
        end,
	
onMouseClick = function()
	commandOnce(Altitude_arm)
return true;
end,	
},
---------------------------------------------------------------------
--VVI
switch {
	position = {1075, 874, 57, 57},
        state = function()
		return true;
        end,
	
onMouseClick = function()
	commandOnce(VVI)
return true;
end,	
},
---------------------------------------------------------------------
--VVI down
switch {
	position = {977, 977, 57, 79},
        state = function()
		return true;
        end,
	
onMouseClick = function()
	commandOnce(VVI_down)
return true;
end,	
},
---------------------------------------------------------------------
--VVI up
switch {
	position = {977, 890, 57, 79},
        state = function()
		return true;
        end,
	
onMouseClick = function()
	commandOnce(VVI_up)
return true;
end,	
},
---------------------------------------------------------------------
--Thrust up
switch {
	position = {492, 936, 103, 34},
        state = function()
		return true;
        end,
	
onMouseClick = function()
	commandOnce(Airspeed_up)
return true;
end,	
},
---------------------------------------------------------------------
--Thrust down
switch {
	position = {492, 875, 103, 34},
        state = function()
		return true;
        end,
	
onMouseClick = function()
	commandOnce(Airspeed_down)
return true;
end,	
},
---------------------------------------------------------------------
--Altitude up
switch {
	position = {678, 936, 103, 34},
        state = function()
		return true;
        end,
	
onMouseClick = function()
	commandOnce(Altitude_up)
return true;
end,	
},
---------------------------------------------------------------------
--Altitude down
switch {
	position = {678, 875, 103, 34},
        state = function()
		return true;
        end,
	
onMouseClick = function()
	commandOnce(Altitude_down)
return true;
end,	
},
---------------------------------------------------------------------

---------------------------------------------------------------------
    -- speed digits
    digitstape {
        position = { 505, 1000, 70, 30},
        image = digitsImage,
        digits = 3,
        showLeadingZeros = false,
		allowNonRound = true,
		fractional = function()
			if get(Mach_speed) == 1 then
				return 2
			else
				return 0
			end
		end,
        value = function()
			return get(airspeed_dial_kts_mach)
		end,
		valueEnabler = function()
			return get(dc_bus) == 1
		end,
    };
---------------------------------------------------------------------
    -- Altitude digits
    digitstape {
        position = { 652, 1000, 70, 30},
        image = digitsImage,
        digits = 5,
        showLeadingZeros = false,
		allowNonRound = true,
        value = function()
			return get(altitude_dial_ft)
		end,
		valueEnabler = function()
			return get(dc_bus) == 1
		end,
    };
---------------------------------------------------------------------
    -- V/S digits
    digitstape {
        position = { 1061, 1000, 70, 30},
        image = digitsImage,
        digits = 5,
        showLeadingZeros = false,
		allowNonRound = true,
		showSign = true,
        value = function()
			return get(vvi_dial_fpm) * 0.01
		end,
		valueEnabler = function()
			return get(dc_bus) == 1
		end,
    };
---------------------------------------------------------------------
---------------------------------------------------------------------AUTOPILOT---------------------------------------------------------------------
}