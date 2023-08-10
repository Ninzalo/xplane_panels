----------------
-- SWITCHERS
----------------
defineProperty("main_menu_subpanel", globalPropertyi("sim/an148/main_menu_subpanel"))
defineProperty("mid_subpanel", globalPropertyi("sim/an148/mid_subpanel"))
defineProperty("capt_subpanel", globalPropertyi("sim/an148/capt_subpanel"))
defineProperty("fo_subpanel", globalPropertyi("sim/an148/fo_subpanel"))
defineProperty("central_tunnel_subpanel", globalPropertyi("sim/an148/central_tunnel_subpanel"))
defineProperty("fctl_subpanel", globalPropertyi("sim/an148/fctl_subpanel"))
defineProperty("overhead_subpanel", globalPropertyi("sim/an148/overhead"))
defineProperty("fuel_subpanel", globalPropertyi("sim/an148/fuel_panel"))

----------------
-- GET PANELS
----------------
defineProperty("panel_1") --main_menu_panel
defineProperty("panel_2") --overhead_subpanel
defineProperty("panel_3") --mid_panel
defineProperty("panel_4") --capt_subpanel
defineProperty("panel_5") --fo_subpanel
defineProperty("panel_6") --central_tunnel_subpanel
defineProperty("panel_7") --fctl_subpanel
defineProperty("panel_8") --fuel_panel

local p1 = get(panel_1)
local p2 = get(panel_2)
local p3 = get(panel_3)
local p4 = get(panel_4)
local p5 = get(panel_5)
local p6 = get(panel_6)
local p7 = get(panel_7)
local p8 = get(panel_8)

----------------
-- HANDLERS
----------------
-----------------------------------------------------------------------------------------------------
--MAIN MENU
local main_menu_subpanel_command = createCommand("xap/panels/panel_1", "main_menu_subpanel")
function main_menu_subpanel_handler(phase)  -- for all commands phase equals: 0 on press; 1 while holding; 2 on release
	if 0 == phase then
            if get(main_menu_subpanel) ~= 0 then
                set(main_menu_subpanel, 0)
            else
                set(main_menu_subpanel, 1)
				movePanelToTop(p1)
            end
    end
return 0
end
registerCommandHandler(main_menu_subpanel_command, 0, main_menu_subpanel_handler)
-----------------------------------------------------------------------------------------------------
--MID PANEL
local mid_subpanel_command = createCommand("xap/panels/panel_3", "mid_subpanel")
function mid_subpanel_handler(phase)  -- for all commands phase equals: 0 on press; 1 while holding; 2 on release
	if 0 == phase then
            if get(mid_subpanel) ~= 0 then
                set(mid_subpanel, 0)
            else
                set(mid_subpanel, 1)
				movePanelToTop(p3)
            end
    end
return 0
end
registerCommandHandler(mid_subpanel_command, 0, mid_subpanel_handler)
-----------------------------------------------------------------------------------------------------
--CAPT PANEL
local capt_subpanel_command = createCommand("xap/panels/panel_4", "capt_subpanel")
function capt_subpanel_handler(phase)  -- for all commands phase equals: 0 on press; 1 while holding; 2 on release
	if 0 == phase then
            if get(capt_subpanel) ~= 0 then
                set(capt_subpanel, 0)
            else
                set(capt_subpanel, 1)
				movePanelToTop(p4)
            end
    end
return 0
end
registerCommandHandler(capt_subpanel_command, 0, capt_subpanel_handler)
-----------------------------------------------------------------------------------------------------
--FO PANEL
local fo_subpanel_command = createCommand("xap/panels/panel_5", "fo_subpanel")
function fo_subpanel_handler(phase)  -- for all commands phase equals: 0 on press; 1 while holding; 2 on release
	if 0 == phase then
            if get(fo_subpanel) ~= 0 then
                set(fo_subpanel, 0)
            else
                set(fo_subpanel, 1)
				movePanelToTop(p5)
            end
    end
return 0
end
registerCommandHandler(fo_subpanel_command, 0, fo_subpanel_handler)
-----------------------------------------------------------------------------------------------------
--CENTRAL TUNNEL PANEL
local central_tunnel_subpanel_command = createCommand("xap/panels/panel_6", "central_tunnel_subpanel")
function central_tunnel_subpanel_handler(phase)  -- for all commands phase equals: 0 on press; 1 while holding; 2 on release
	if 0 == phase then
            if get(central_tunnel_subpanel) ~= 0 then
                set(central_tunnel_subpanel, 0)
            else
                set(central_tunnel_subpanel, 1)
				movePanelToTop(p6)
            end
    end
return 0
end
registerCommandHandler(central_tunnel_subpanel_command, 0, central_tunnel_subpanel_handler)
-----------------------------------------------------------------------------------------------------
--F/CTL PANEL
local fctl_subpanel_command = createCommand("xap/panels/panel_7", "fctl_subpanel")
function fctl_subpanel_handler(phase)  -- for all commands phase equals: 0 on press; 1 while holding; 2 on release
	if 0 == phase then
            if get(fctl_subpanel) ~= 0 then
                set(fctl_subpanel, 0)
            else
                set(fctl_subpanel, 1)
				movePanelToTop(p7)
            end
    end
return 0
end
registerCommandHandler(fctl_subpanel_command, 0, fctl_subpanel_handler)
-----------------------------------------------------------------------------------------------------
--OVERHEAD PANEL
local overhead_subpanel_command = createCommand("xap/panels/panel_2", "overhead_subpanel")
function overhead_subpanel_handler(phase)  -- for all commands phase equals: 0 on press; 1 while holding; 2 on release
	if 0 == phase then
            if get(overhead_subpanel) ~= 0 then
                set(overhead_subpanel, 0)
            else
                set(overhead_subpanel, 1)
				movePanelToTop(p2)
            end
    end
return 0
end
registerCommandHandler(overhead_subpanel_command, 0, overhead_subpanel_handler)
-----------------------------------------------------------------------------------------------------
--fuel_panel
local fuel_subpanel_command = createCommand("xap/panels/panel_8", "fuel_subpanel")
function fuel_subpanel_handler(phase)  -- for all commands phase equals: 0 on press; 1 while holding; 2 on release
	if 0 == phase then
            if get(fuel_subpanel) ~= 0 then
                set(fuel_subpanel, 0)
            else
                set(fuel_subpanel, 1)
				movePanelToTop(p8)
            end
    end
return 0
end
registerCommandHandler(fuel_subpanel_command, 0, fuel_subpanel_handler)
-----------------------------------------------------------------------------------------------------
----------------
-- SHOW/HIDE LOGIC
----------------
function update()
p1 = get(panel_1)
p2 = get(panel_2)
p3 = get(panel_3)
p4 = get(panel_4)
p5 = get(panel_5)
p6 = get(panel_6)
p7 = get(panel_7)
p8 = get(panel_8)


p1.visible = get(main_menu_subpanel) == 1
p2.visible = get(overhead_subpanel) == 1
p3.visible = get(mid_subpanel) == 1
p4.visible = get(capt_subpanel) == 1
p5.visible = get(fo_subpanel) == 1
p6.visible = get(central_tunnel_subpanel) == 1
p7.visible = get(fctl_subpanel) == 1
p8.visible = get(fuel_subpanel) == 1
end