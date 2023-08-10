----------------
-- SWITCHERS
----------------
defineProperty("capt_subpanel", globalPropertyi("sim/an148/capt_subpanel"))

----------------
-- GET PANELS
----------------
defineProperty("panel_4") --capt_subpanel

local p4 = get(panel_4)

----------------
-- HANDLERS
----------------
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
----------------
-- SHOW/HIDE LOGIC
----------------
function update()
p4 = get(panel_4)


p4.visible = get(capt_subpanel) == 1
end
