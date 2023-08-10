size = {2048, 2048}

-----------------
-- VARIABLES
-----------------
defineProperty("capt_subpanel", globalPropertyi("sim/an148/capt_subpanel"))
defineProperty("pitch_electric_sim", globalPropertyf("sim/cockpit2/gauges/indicators/pitch_electric_deg_pilot"))
defineProperty("pitch1", globalPropertyf("sim/an148/ag_tape"))
defineProperty("pitch2", globalPropertyf("sim/an148/ag_tape1"))

defineProperty("rudder_marker", globalPropertyf("sim/an148/rudder_marker"))
defineProperty("rudder_deg", globalPropertyf("sim/flightmodel2/wing/rudder1_deg[0]"))
defineProperty("elevator_marker", globalPropertyf("sim/an148/elevator_marker"))
defineProperty("elevator_deg", globalPropertyf("sim/flightmodel2/wing/elevator1_deg[0]"))
defineProperty("aileron_marker", globalPropertyf("sim/an148/aileron_marker"))
defineProperty("aileron_deg", globalPropertyf("sim/flightmodel2/wing/aileron1_deg[0]"))

defineProperty("rudder_marker1", globalPropertyf("sim/an148/rudder_marker1"))
defineProperty("elevator_marker1", globalPropertyf("sim/an148/elevator_marker1"))

defineProperty("airspeed_kts_pilot", globalPropertyf("sim/cockpit2/gauges/indicators/airspeed_kts_pilot"))
defineProperty("airspeed", globalPropertyf("sim/an148/airspeed"))

defineProperty("alt_m", globalPropertyi("sim/cockpit2/gauges/indicators/altitude_ft_pilot"))
defineProperty("alt_tape", globalPropertyf("sim/an148/altitude"))

defineProperty("sideslip_degrees", globalPropertyf("sim/cockpit2/gauges/indicators/sideslip_degrees"))
defineProperty("slip_ball", globalPropertyf("sim/an148/slip_ball"))

defineProperty("ny", globalPropertyi("sim/an148/ny"))
defineProperty("gforce", globalPropertyf("sim/flightmodel2/misc/gforce_normal"))

defineProperty("ny", globalPropertyi("sim/an148/ny"))
defineProperty("gforce", globalPropertyf("sim/flightmodel2/misc/gforce_normal"))

defineProperty("AoA", globalPropertyi("sim/an148/AoA"))
defineProperty("AoA_angle", globalPropertyf("sim/flightmodel2/misc/AoA_angle_degrees"))

defineProperty("test_value", globalPropertyf("sim/an148/test_value"))
defineProperty("test_value1", globalPropertyf("sim/an148/test_value1"))

defineProperty("ENGN_EGT_c1", globalPropertyf("sim/flightmodel/engine/ENGN_EGT_c[0]"))
defineProperty("ENGN_EGT_c2", globalPropertyf("sim/flightmodel/engine/ENGN_EGT_c[1]"))
defineProperty("ENGN_N1_1", globalPropertyf("sim/flightmodel/engine/ENGN_N1_[0]"))
defineProperty("ENGN_N1_2", globalPropertyf("sim/flightmodel/engine/ENGN_N1_[1]"))
defineProperty("eng1_temp", globalPropertyf("sim/an148/eng1_temp"))
defineProperty("eng2_temp", globalPropertyf("sim/an148/eng2_temp"))
defineProperty("eng1_n1", globalPropertyf("sim/an148/eng1_n1"))
defineProperty("eng2_n1", globalPropertyf("sim/an148/eng2_n1"))
defineProperty("eng1_pr", globalPropertyf("sim/an148/eng1_pr"))
defineProperty("eng2_pr", globalPropertyf("sim/an148/eng2_pr"))

defineProperty("p1_bearing", globalPropertyf("sim/cockpit2/tcas/indicators/relative_bearing_degs[0]"))
defineProperty("p1_distance", globalPropertyf("sim/cockpit2/tcas/indicators/relative_distance_mtrs[0]"))
defineProperty("p1_altitude", globalPropertyf("sim/cockpit2/tcas/indicators/relative_altitude_mtrs[0]"))
defineProperty("tcas_p1_show", globalPropertyi("sim/an148/tcas_p1_show"))

defineProperty("p2_bearing", globalPropertyf("sim/cockpit2/tcas/indicators/relative_bearing_degs[1]"))
defineProperty("p2_distance", globalPropertyf("sim/cockpit2/tcas/indicators/relative_distance_mtrs[1]"))
defineProperty("p2_altitude", globalPropertyf("sim/cockpit2/tcas/indicators/relative_altitude_mtrs[1]"))
defineProperty("tcas_p2_show", globalPropertyi("sim/an148/tcas_p2_show"))

defineProperty("p3_bearing", globalPropertyf("sim/cockpit2/tcas/indicators/relative_bearing_degs[2]"))
defineProperty("p3_distance", globalPropertyf("sim/cockpit2/tcas/indicators/relative_distance_mtrs[2]"))
defineProperty("p3_altitude", globalPropertyf("sim/cockpit2/tcas/indicators/relative_altitude_mtrs[2]"))
defineProperty("tcas_p3_show", globalPropertyi("sim/an148/tcas_p3_show"))

defineProperty("p4_bearing", globalPropertyf("sim/cockpit2/tcas/indicators/relative_bearing_degs[3]"))
defineProperty("p4_distance", globalPropertyf("sim/cockpit2/tcas/indicators/relative_distance_mtrs[3]"))
defineProperty("p4_altitude", globalPropertyf("sim/cockpit2/tcas/indicators/relative_altitude_mtrs[3]"))
defineProperty("tcas_p4_show", globalPropertyi("sim/an148/tcas_p4_show"))
--[[
local p_bearing_table = {
	{-180.0, },
	{-170.0, },
	{-160.0, },
	{-150.0, },
	{-140.0, },
	{-130.0, },
	{-120.0, },
	{-110.0, },
	{-100.0,}
	{-90.0,}
	{-80.0,}
	{-70.0,}
	{-60.0,}
	{-50.0,}
	{-40.0,}
	{-30.0,}
	{-20.0,}
	{-10.0,}
	{0.0, },
	{10.0, },
	{20.0, },
	{30.0, },
	{40.0, },
	{50.0, },
	{60.0, },
	{70.0, },
	{80.0, },
	{-90.0,}
	{-100.0,}
	{-110.0, },
	{-120.0, },
	{-130.0, },
	{-140.0, },
	{-150.0, },
	{-160.0, },
	{-170.0, },
	{-180.0, },	
}

local p_distance = {
	{0.0, },
	{1000.0, },
	{5000.0, },
	{10000.0, },
	{20000.0, },
	{30000.0, },
	{40000.0, },
}
--]]
local pitch_table = {
	{-80.0, 1.545},
	{-70.0, 1.455},
	{-60.0, 1.365},
	{-50.0, 1.275},
	{-40.0, 1.19},
	{-30.0, 1.1},
	{-20.0, 1.01},
	{-10.0, 0.925},
	{0.0, 0.84},
	{10.0, 0.75},
	{20.0, 0.66},
	{30.0, 0.57},
	{40.0, 0.485},
	{50.0, 0.395},
	{60.0, 0.305},
	{70.0, 0.215},
	{80.0, 0.13},
}

local pitch_emer_table = {
	{-80.0, 1.45},
	{-70.0, 1.36},
	{-60.0, 1.27},
	{-50.0, 1.18},
	{-40.0, 1.09},
	{-30.0, 1.0},
	{-20.0, 0.91},
	{-10.0, 0.82},
	{0.0, 0.73},
	{10.0, 0.64},
	{20.0, 0.55},
	{30.0, 0.46},
	{40.0, 0.38},
	{50.0, 0.29},
	{60.0, 0.2},
	{70.0, 0.11},
	{80.0, 0.02},
}

local rudder_marker_table = {
	{-18, 822},
	{0, 844},
	{18, 867},
}

local elevator_marker_table = {
	{-25, 288},
	{0, 266},
	{17, 246},
}

local rudder_marker_table1 = {
	{-18, 1492},
	{0, 1514},
	{18, 1536},
}

local elevator_marker_table1 = {
	{-25, 365},
	{0, 347},
	{17, 325},
}

local roll_marker_table = {
	{-20, -55},
	{0, 0},
	{20, 55},
}

local ny_table = {
	{0, -135},
	{1, -90},
	{2, -45},	
	{3, 0},
}

--[[local AoA_table = {
	{0, -135},
	{5, -90},
	{10, -90},	
	{15, 0},
}--]]

local altitude_table = {
	{0, 0.67},
	{1000, 0.53},
	{2000, 0.48},
	{3000, 0.43},
	{4000, 0.38},
	{5000, 0.33},
	{6000, 0.29},
	{7500, 0.216},
	{8000, 0.19},
	{9000, 0.14},
	{10000, 0.1},
	{11000, 0.05},
	{12000, 0.0},
	{13500, -0.07},
}

local speed_table = {
	{0.0, 0.5},
	{20.0, 0.47},
	{40.0, 0.43},
	{60.0, 0.39},
	{80.0, 0.34},
	{100.0, 0.3},
	{150.0, 0.26},
	{200.0, 0.21},
	{250.0, 0.17},
	{300.0, 0.12},
	{350.0, 0.08},
	{400.0, 0.036},
	{450.0, -0.01},
	{500.0, -0.05},
	{550.0, -0.095},
	{600.0, -0.13},
}

local slip_table = {
	{-10, 969},
	{0, 1027},
	{10, 1085},
}

local eng1_temp_table = {
	{0, 0},
	{1100, 180},
}

local eng2_temp_table = {
	{0, 0},
	{1100, 180},
}

local eng1_n1_table = {
	{0, 0},
	{100, 180},
}

local eng2_n1_table = {
	{0, 0},
	{100, 180},
}

local function interpolate(tbl, value)
    local lastActual = 0 
    local lastReference = 0 
    for _k, v in pairs(tbl) do
		if value == v[1] then
            return v[2]
        end
        if value < v[1] then
            local a = value - lastActual
            local m = v[2] - lastReference
            return lastReference + a / (v[1] - lastActual) * m
        end
        lastActual = v[1]
        lastReference = v[2]
    end
    return value + lastActual - lastReference
end

function update()
-------------------------------------------------
if get(pitch_electric_sim) > 80 then
	set(pitch1, 0.05)
elseif get(pitch_electric_sim) < -80 then
	set(pitch1, 1.45)
else
	set(pitch1, interpolate(pitch_table, get(pitch_electric_sim)))
end
-------------------------------------------------
if get(pitch_electric_sim) > 80 then
	set(pitch2, -0.22)
elseif get(pitch_electric_sim) < -80 then
	set(pitch2, 0.41)
else
	set(pitch2, interpolate(pitch_emer_table, get(pitch_electric_sim)))
end
-------------------------------------------------
if get(rudder_deg) > 18 then
	set(rudder_marker, 867)
elseif get(rudder_deg) < -18 then
	set(rudder_marker, 822)
else
	set(rudder_marker, interpolate(rudder_marker_table, get(rudder_deg)))
end
-------------------------------------------------
if get(elevator_deg) > 17 then
	set(elevator_marker, 246)
elseif get(elevator_deg) < -25 then
	set(elevator_marker, 288)
else
	set(elevator_marker, interpolate(elevator_marker_table, get(elevator_deg)))
end
-------------------------------------------------
if get(rudder_deg) > 18 then
	set(rudder_marker1, 867)
elseif get(rudder_deg) < -18 then
	set(rudder_marker1, 822)
else
	set(rudder_marker1, interpolate(rudder_marker_table1, get(rudder_deg)))
end
-------------------------------------------------
if get(elevator_deg) > 17 then
	set(elevator_marker1, 246)
elseif get(elevator_deg) < -25 then
	set(elevator_marker1, 288)
else
	set(elevator_marker1, interpolate(elevator_marker_table1, get(elevator_deg)))
end
-------------------------------------------------
if get(aileron_deg) > 20 then
	set(aileron_marker, 55)
elseif get(aileron_deg) < -20 then
	set(aileron_marker, -55)
else
	set(aileron_marker, interpolate(roll_marker_table, get(aileron_deg)))
end
-------------------------------------------------
if get(airspeed_kts_pilot) > 600 then
	set(airspeed, -0.13)
elseif get(airspeed_kts_pilot) < 0 then
	set(airspeed, 0.5)
else
	set(airspeed, interpolate(speed_table, get(airspeed_kts_pilot)))
end
-------------------------------------------------
if get(sideslip_degrees) > 10 then
	set(slip_ball, 1085)
elseif get(sideslip_degrees) < -10 then
	set(slip_ball, 969)
else
	set(slip_ball, interpolate(slip_table, get(sideslip_degrees)))
end
-------------------------------------------------
if get(alt_m) > 13500 then
	set(alt_tape, -0.07)
elseif get(alt_m) < 0 then
	set(alt_tape, 0.67)
else
	set(alt_tape, interpolate(altitude_table, get(alt_m)))
end
-------------------------------------------------
if get(gforce) > 3 then
	set(ny, 0)
elseif get(gforce) < 0 then
	set(ny, -135)
else
	set(ny, interpolate(ny_table, get(gforce)))
end
-------------------------------------------------
if get(ENGN_EGT_c1) > 1100 then
	set(eng1_temp, 180)
elseif get(ENGN_EGT_c1) < 0 then
	set(eng1_temp, 0)
else
	set(eng1_temp, interpolate(eng1_temp_table, get(ENGN_EGT_c1)))
end
-------------------------------------------------
if get(ENGN_EGT_c2) > 1100 then
	set(eng2_temp, 180)
elseif get(ENGN_EGT_c2) < 0 then
	set(eng2_temp, 0)
else
	set(eng2_temp, interpolate(eng2_temp_table, get(ENGN_EGT_c2)))
end
-------------------------------------------------
if get(ENGN_N1_1) > 100 then
	set(eng1_n1, 180)
elseif get(ENGN_N1_1) < 0 then
	set(eng1_n1, 0)
else
	set(eng1_n1, interpolate(eng1_n1_table, get(ENGN_N1_1)))
end
-------------------------------------------------
if get(ENGN_N1_2) > 100 then
	set(eng2_n1, 180)
elseif get(ENGN_N1_2) < 0 then
	set(eng2_n1, 0)
else
	set(eng2_n1, interpolate(eng2_n1_table, get(ENGN_N1_2)))
end
-------------------------------------------------
end