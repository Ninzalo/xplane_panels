size = { 2048, 2048 }

createProp("sim/an148/capt_subpanel", "int", 1);

createProp("sim/an148/ag_tape", "float", 0);
createProp("sim/an148/ag_tape1", "float", 0);

createProp("sim/an148/mv1", "int", 0);
createProp("sim/an148/mv2", "int", 0);
createProp("sim/an148/mv3", "int", 0);
createProp("sim/an148/dkmv1", "int", 0);
createProp("sim/an148/dkmv2", "int", 0);
createProp("sim/an148/vor1", "int", 0);
createProp("sim/an148/vor2", "int", 0);
createProp("sim/an148/dme1", "int", 0);
createProp("sim/an148/dme2", "int", 0);
createProp("sim/an148/ark1", "int", 0);
createProp("sim/an148/ark2", "int", 0);
createProp("sim/an148/sbros_acb", "int", 0);
createProp("sim/an148/cvbp", "int", 0);
createProp("sim/an148/pass", "int", 0);
createProp("sim/an148/km", "int", 0);

createProp("sim/an148/rudder_marker", "int", 0);
createProp("sim/an148/elevator_marker", "int", 0);
createProp("sim/an148/aileron_marker", "int", 0);

createProp("sim/an148/rudder_marker1", "int", 0);
createProp("sim/an148/elevator_marker1", "int", 0);

createProp("sim/an148/test_value", "int", 0);
createProp("sim/an148/test_value1", "float", 0);

createProp("sim/an148/airspeed", "float", 0);
createProp("sim/an148/altitude", "float", 0);
createProp("sim/an148/slip_ball", "float", 0);
createProp("sim/an148/ny", "int", 0);
createProp("sim/an148/AoA", "int", 0);

createProp("sim/an148/tcas_p1_show", "int", 0);
createProp("sim/an148/tcas_p2_show", "int", 0);
createProp("sim/an148/tcas_p3_show", "int", 0);
createProp("sim/an148/tcas_p4_show", "int", 0);

createProp("sim/an148/eng1_temp", "int", 0);
createProp("sim/an148/eng2_temp", "int", 0);
createProp("sim/an148/eng1_n1", "int", 0);
createProp("sim/an148/eng2_n1", "int", 0);
createProp("sim/an148/eng1_pr", "int", 0);
createProp("sim/an148/eng2_pr", "int", 0);

createProp("sim/an148/fl_fuel_tank", "int", 0);
createProp("sim/an148/sl_fuel_tank", "int", 0);
createProp("sim/an148/fr_fuel_tank", "int", 0);
createProp("sim/an148/sr_fuel_tank", "int", 0);
createProp("sim/an148/fm_fuel_tank", "int", 0);
createProp("sim/an148/sm_fuel_tank", "int", 0);

createProp("sim/an148/inverter_on_3", "int", 0);
createProp("sim/an148/rudder_heat", "int", 0);
createProp("sim/an148/emer_pitot", "int", 0);
createProp("sim/an148/eng_select", "int", -1);
createProp("sim/an148/eng_startup", "int", 0);

createProp("sim/an148/dc_bus", "int", 0);

createProp("sim/an148/fd_pilot", "int", 0);
createProp("sim/an148/fd_copilot", "int", 0);

createProp("sim/an148/atis1", "int", 124850);
createProp("sim/an148/atis2", "int", 126900);

--------------------
-- PANELS SIZE
--------------------
defineProperty("window_height", globalPropertyi("sim/graphics/view/window_height"))
local coef = get(window_height) / 1024
if coef > 1 then coef = 1 end  

--------------------
-- ADD PANELS
--------------------
defineProperty("closeImage", loadImage("close.png"))

-----------------------------------------------------------------------------------------------------
capt_panel = subpanel {
position = { 40, 0, 1920 * coef, 1080 * coef }; 
noBackground = true; --Запрет на появление фона
noClose = true; --Запрет на появление крестика в углу если true
noMove = true; --Запрет на передвижение если true
noResize = true; --Запрет на изменение размера если true
resizeProportional = true; --Пропорциональное изменение если true
savePosition = true; --Задание размеров и позиций вручную если true
name = "capt_panel";
components = {
	capt_panel{
		position = { 0, 0, 1920 * coef, 1080 * coef },
	};
};
}
-----------------------------------------------------------------------------------------------------
components = {
panel_logic {
		panel_4 = capt_panel,
},
gauges_logic{},
--msrp{},
elec_logic{},
hot_start{},
}
