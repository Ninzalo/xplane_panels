size = { 2048, 2048 }

createProp("sim/an148/capt_subpanel", "int", 1);
createProp("sim/an148/dc_bus", "int", 0);
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
position = { 0, 0, 1920, 1200 }; 
noBackground = true; --Запрет на появление фона
noClose = true; --Запрет на появление крестика в углу если true
noMove = true; --Запрет на передвижение если true
noResize = false; --Запрет на изменение размера если true
resizeProportional = false; --Пропорциональное изменение если true
savePosition = true; --Задание размеров и позиций вручную если true
name = "capt_panel";
components = {
	capt_panel{
		position = { 0, 0, 1920, 1200 },
	};
};
}
-----------------------------------------------------------------------------------------------------
components = {
panel_logic {
		panel_4 = capt_panel,
},
-- gauges_logic{},
-- --msrp{},
-- elec_logic{},
-- hot_start{},
}
