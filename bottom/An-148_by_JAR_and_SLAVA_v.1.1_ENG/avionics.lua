size = { 2048, 2048 }

createProp("sim/an148/main_menu_subpanel", "int", 0);
createProp("sim/an148/mid_subpanel", "int", 0);
createProp("sim/an148/capt_subpanel", "int", 0);
createProp("sim/an148/fo_subpanel", "int", 0);
createProp("sim/an148/central_tunnel_subpanel", "int", 1);
createProp("sim/an148/fctl_subpanel", "int", 0);
createProp("sim/an148/overhead", "int", 1);
createProp("sim/an148/fuel_panel", "int", 0);

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
mid_panel = subpanel {
position = { 40, 0, 1920 * coef, 1080 * coef }; 
noBackground = true; --Запрет на появление фона
noClose = true; --Запрет на появление крестика в углу если true
noMove = true; --Запрет на передвижение если true
noResize = true; --Запрет на изменение размера если true
resizeProportional = true; --Пропорциональное изменение если true
savePosition = true; --Задание размеров и позиций вручную если true
name = "mid_panel";
components = {
	mid_panel{
		position = { 0, 0, 1920 * coef, 1080 * coef },
	};
};
}
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
fo_panel = subpanel {
position = { 40, 0, 1920 * coef, 1080 * coef }; 
noBackground = true; --Запрет на появление фона
noClose = true; --Запрет на появление крестика в углу если true
noMove = true; --Запрет на передвижение если true
noResize = true; --Запрет на изменение размера если true
resizeProportional = true; --Пропорциональное изменение если true
savePosition = true; --Задание размеров и позиций вручную если true
name = "fo_panel";
components = {
	fo_panel{
		position = { 0, 0, 1920 * coef, 1080 * coef },
	};
};
}
-----------------------------------------------------------------------------------------------------
central_tunnel_panel = subpanel {
position = { 40, 0, 1600, 1200}; 
noBackground = true; --Запрет на появление фона
noClose = true; --Запрет на появление крестика в углу если true
noMove = false; --Запрет на передвижение если true
noResize = false; --Запрет на изменение размера если true
resizeProportional = false; --Пропорциональное изменение если true
savePosition = false; --Задание размеров и позиций вручную если true
name = "central_tunnel_panel";
components = {
	central_tunnel{
		position = { -40, 0, 1600, 1200 },
	};
};
}
-----------------------------------------------------------------------------------------------------
fctl_panel = subpanel {
position = { 40, 0, 1600 * coef, 1200 * coef }; 
noBackground = true; --Запрет на появление фона
noClose = true; --Запрет на появление крестика в углу если true
noMove = false; --Запрет на передвижение если true
noResize = false; --Запрет на изменение размера если true
resizeProportional = true; --Пропорциональное изменение если true
savePosition = true; --Задание размеров и позиций вручную если true
name = "fctl_panel";
components = {
	fctl_panel{
		position = { 0, 0, 1600 * coef, 1200 * coef },
	};
};
}
-----------------------------------------------------------------------------------------------------
overhead_panel = subpanel {
position = { 0, 1200, 1600, 600 };  
noBackground = true; --Запрет на появление фона
noClose = true; --Запрет на появление крестика в углу если true
noMove = false; --Запрет на передвижение если true
noResize = false; --Запрет на изменение размера если true
resizeProportional = false; --Пропорциональное изменение если true
savePosition = true; --Задание размеров и позиций вручную если true
name = "overhead_panel";
components = {
	overhead_panel{
		position = { 0, 1200, 1600, 1200 },
	};
};
}
-----------------------------------------------------------------------------------------------------
fuel_panel = subpanel {
position = { 40, 0, 832 * coef, 505 * coef };  
noBackground = true; --Запрет на появление фона
noClose = true; --Запрет на появление крестика в углу если true
noMove = true; --Запрет на передвижение если true
noResize = true; --Запрет на изменение размера если true
resizeProportional = true; --Пропорциональное изменение если true
savePosition = true; --Задание размеров и позиций вручную если true
name = "fuel_panel";
components = {
	fuel_panel{
		position = { 0, 0, 832 * coef, 505 * coef },
	};
};
}
-----------------------------------------------------------------------------------------------------
main_menu = subpanel {
position = { 0, 100, 32, 485 }; 
noBackground = true;
noClose = true;
noMove = true;
noResize = true;
movable = false;
resizeble = false;
resizeProportional = true;
savePosition = false;
name = "main_menu";
components = {
	menu_panel {
		position = { 0, 0, 32, 485 }, 
		panel_1 = main_menu,
		panel_2 = overhead_panel,
		panel_3 = mid_panel,
		panel_4 = capt_panel,
		panel_5 = fo_panel,
		panel_6 = central_tunnel_panel,
		panel_7 = fctl_panel,
		panel_8 = fuel_panel,
	};
};
}
-----------------------------------------------------------------------------------------------------
components = {
panel_logic {
		panel_1 = main_menu,
		panel_2 = overhead_panel,
		panel_3 = mid_panel,
		panel_4 = capt_panel,
		panel_5 = fo_panel,
		panel_6 = central_tunnel_panel,
		panel_7 = fctl_panel,
		panel_8 = fuel_panel,
},
gauges_logic{},
--msrp{},
elec_logic{},
hot_start{},
}