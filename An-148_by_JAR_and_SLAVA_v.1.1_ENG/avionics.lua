size = { 2048, 2048 }

-- ¿¿¿¿¿¿¿¿
createProp("sim/custom/xap/clpbrd_chapters_select", "int");
defineProperty("tankpump_l", globalPropertyf("sim/cockpit2/fuel/fuel_tank_pump_on[0]"));
defineProperty("tankpump_c", globalPropertyf("sim/cockpit2/fuel/fuel_tank_pump_on[1]"));
defineProperty("tankpump_r", globalPropertyf("sim/cockpit2/fuel/fuel_tank_pump_on[2]"));
defineProperty("clipboard", globalPropertyf("sim/custom/xap/clpbrd_chapters_select"));

defineProperty("rat", globalPropertyi("sim/cockpit2/switches/ram_air_turbine_on"));

createProp("sim/custom/xap/fps_lo_hi", "int");
defineProperty("fps_lo_hi", globalPropertyf("sim/custom/xap/fps_lo_hi"));
set(fps_lo_hi, 1)

createProp("sim/custom/xap/clpbrd_chapter1_pages", "int");
createProp("sim/custom/xap/clpbrd_chapter2_pages", "int");
createProp("sim/custom/xap/clpbrd_chapter3_pages", "int");
createProp("sim/custom/xap/clpbrd_chapter4_pages", "int");
createProp("sim/custom/xap/clpbrd_chapter5_pages", "int");
createProp("sim/custom/xap/clpbrd_chapter6_pages", "int");

createProp("sim/custom/xap/pito3_on", "int");
createProp("sim/custom/xap/obog_stab_on", "int");

defineProperty("is_startup_running",globalPropertyi("sim/operation/prefs/startup_running"));

if get(is_startup_running) < 1 then -- ¿¿¿¿¿¿¿¿¿ ¿¿¿¿¿¿ ¿ ¿¿¿¿¿ ¿ RAT
set(tankpump_l, 0)
set(tankpump_c, 0)
set(tankpump_r, 0)
set(rat, 0)
end

-- ¿¿¿¿¿¿¿¿¿¿
defineProperty("el_hyd_pump_on", globalPropertyi("sim/cockpit2/switches/electric_hydraulic_pump_on")); -- ¿¿¿¿¿¿¿¿ ¿¿ ¿¿¿¿¿¿¿¿¿ ¿¿¿¿¿¿¿¿¿¿¿¿
defineProperty("main_hyd_pump1_mode", globalPropertyi("sim/operation/failures/rel_hydpmp")); -- ¿¿¿¿¿¿¿¿ ¿¿ ¿¿¿¿¿¿¿¿¿ ¿¿¿¿¿ ¿¿=0 ¿¿¿=6
defineProperty("main_hyd_pump2_mode", globalPropertyi("sim/operation/failures/rel_hydpmp2")); -- ¿¿¿¿¿¿¿¿ ¿¿ ¿¿¿¿¿¿¿¿¿ ¿¿¿¿¿ ¿¿=0 ¿¿¿=6
createProp("sim/custom/xap/el_hyd_pump1_mode", "int"); -- ¿¿¿¿¿ ¿¿¿¿¿¿¿¿¿¿¿¿ 1
createProp("sim/custom/xap/el_hyd_pump2_mode", "int"); -- ¿¿¿¿¿ ¿¿¿¿¿¿¿¿¿¿¿¿ 2
createProp("sim/custom/xap/res_hyd_pump_mode", "int"); -- ¿¿¿¿¿ ¿¿¿¿¿¿¿¿¿ ¿¿¿¿¿¿¿¿¿¿¿¿
createProp("sim/custom/xap/is_auto_hyd_on", "int"); -- ¿¿¿¿ ¿¿¿¿¿¿¿¿¿ ¿¿¿¿¿¿¿¿¿¿
defineProperty("hyd_press_1", globalPropertyf("sim/cockpit2/hydraulics/indicators/hydraulic_pressure_1"));
defineProperty("hyd_press_2", globalPropertyf("sim/cockpit2/hydraulics/indicators/hydraulic_pressure_2"));


if get(is_startup_running) < 1 then -- ¿¿¿¿¿¿¿¿¿ ¿¿¿¿¿¿¿¿¿¿¿¿ ¿ ¿¿¿¿¿¿¿¿ ¿¿¿¿¿¿
set(el_hyd_pump_on, 0)
set(main_hyd_pump1_mode, 6)
set(main_hyd_pump2_mode, 6)
end

-- ¿¿¿¿
createProp("sim/custom/xap/cockpit_light_ratio_ovhd", "float"); -- ¿¿¿¿¿¿¿¿¿ ¿¿¿¿¿¿¿¿
createProp("sim/custom/xap/cockpit_light_ratio_main", "float"); -- ¿¿¿¿¿¿¿¿¿ ¿¿¿¿¿¿
defineProperty("cockpit_light_ratio_ovhd",globalPropertyf("sim/custom/xap/cockpit_light_ratio_ovhd"));
defineProperty("cockpit_light_ratio_main",globalPropertyf("sim/custom/xap/cockpit_light_ratio_main"));
set(cockpit_light_ratio_ovhd, 0.3)

-- ¿¿¿¿¿¿¿¿¿¿
components = {
	flightplan {
		position = {923, 978, 297, 420},
		visible = function()
		return get(clipboard) == 5
		end,
	},
	hydraulic {},
	lights {},
}

