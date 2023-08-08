size = {1600, 1200}

-----------------
-- VARIABLES
-----------------
defineProperty("overhead_subpanel", globalPropertyi("sim/an148/overhead"))
-----------------
defineProperty("battery_on_1", globalPropertyi("sim/cockpit2/electrical/battery_on[0]"))
defineProperty("battery_on_2", globalPropertyi("sim/cockpit2/electrical/battery_on[1]"))
defineProperty("battery_on_3", globalPropertyi("sim/cockpit2/electrical/battery_on[2]"))
defineProperty("battery_fail_1", globalPropertyi("sim/operation/failures/rel_batter0"))
defineProperty("battery_fail_2", globalPropertyi("sim/operation/failures/rel_batter1"))
defineProperty("battery_fail_3", globalPropertyi("sim/operation/failures/rel_batter2"))
defineProperty("gpu_on", globalPropertyf("sim/cockpit/electrical/gpu_on"))
defineProperty("inverter_on_1", globalPropertyi("sim/cockpit2/electrical/inverter_on[0]"))
defineProperty("inverter_on_2", globalPropertyi("sim/cockpit2/electrical/inverter_on[1]"))
defineProperty("inverter_on_3", globalPropertyi("sim/an148/inverter_on_3"))
defineProperty("generator_on_1", globalPropertyi("sim/cockpit2/electrical/generator_on[0]"))
defineProperty("generator_on_2", globalPropertyi("sim/cockpit2/electrical/generator_on[1]"))
defineProperty("generator_on_apu", globalPropertyi("sim/cockpit2/electrical/APU_generator_on"))
defineProperty("gen_fail_1", globalPropertyi("sim/operation/failures/rel_genera0"))
defineProperty("gen_fail_2", globalPropertyi("sim/operation/failures/rel_genera1"))
defineProperty("dc_bus", globalPropertyi("sim/an148/dc_bus"))
-----------------
defineProperty("hydraulic_quantity", globalPropertyf("sim/cockpit/misc/hydraulic_quantity"))	
defineProperty("hydraulic_quantity2", globalPropertyf("sim/cockpit/misc/hydraulic_quantity2"))
defineProperty("rel_hydpmp", globalPropertyf("sim/operation/failures/rel_hydpmp"))
defineProperty("rel_hydpmp2", globalPropertyf("sim/operation/failures/rel_hydpmp2"))
-----------------
defineProperty("fuel_tank_pump_on_1", globalPropertyf("sim/cockpit2/fuel/fuel_tank_pump_on[0]"))
defineProperty("fuel_tank_pump_on_2", globalPropertyf("sim/cockpit2/fuel/fuel_tank_pump_on[1]"))
defineProperty("fuel_tank_pump_on_3", globalPropertyf("sim/cockpit2/fuel/fuel_tank_pump_on[2]"))
defineProperty("fuel_left", globalPropertyf("sim/flightmodel/weight/m_fuel1"))
defineProperty("fuel_right", globalPropertyf("sim/flightmodel/weight/m_fuel3"))
-----------------
defineProperty("fl_fuel_tank", globalPropertyi("sim/an148/fl_fuel_tank"))
defineProperty("sl_fuel_tank", globalPropertyi("sim/an148/sl_fuel_tank"))
defineProperty("fr_fuel_tank", globalPropertyi("sim/an148/fr_fuel_tank"))
defineProperty("sr_fuel_tank", globalPropertyi("sim/an148/sr_fuel_tank"))
defineProperty("fm_fuel_tank", globalPropertyi("sim/an148/fm_fuel_tank"))
defineProperty("sm_fuel_tank", globalPropertyi("sim/an148/sm_fuel_tank"))
defineProperty("fuel_tank_selector", globalPropertyi("sim/cockpit2/fuel/fuel_tank_selector"))
defineProperty("fuel_tank_selector_left", globalPropertyi("sim/cockpit2/fuel/fuel_tank_selector_left"))
defineProperty("fuel_tank_selector_right", globalPropertyi("sim/cockpit2/fuel/fuel_tank_selector_right"))
defineProperty("ENGN_FF_1", globalPropertyf("sim/flightmodel/engine/ENGN_FF_[0]"))
defineProperty("ENGN_FF_2", globalPropertyf("sim/flightmodel/engine/ENGN_FF_[1]"))
-----------------
defineProperty("eng1_inlet", globalPropertyi("sim/cockpit2/ice/ice_inlet_heat_on_per_engine[0]"))
defineProperty("eng2_inlet", globalPropertyi("sim/cockpit2/ice/ice_inlet_heat_on_per_engine[1]"))
defineProperty("wing_heat", globalPropertyi("sim/cockpit2/ice/ice_surfce_heat_on"))
defineProperty("rudder_heat", globalPropertyi("sim/an148/rudder_heat"))
defineProperty("emer_pitot", globalPropertyi("sim/an148/emer_pitot"))
defineProperty("pitot1", globalPropertyi("sim/cockpit2/ice/ice_pitot_heat_on_pilot"))
defineProperty("pitot2", globalPropertyi("sim/cockpit2/ice/ice_pitot_heat_on_copilot"))

defineProperty("APU_running", globalPropertyi("sim/cockpit/engine/APU_running"))
defineProperty("APU_switch", globalPropertyi("sim/cockpit/engine/APU_switch"))
defineProperty("APU_bleed", globalPropertyi("sim/cockpit/pressure/bleed_air_mode"))
defineProperty("APU_N1", globalPropertyf("sim/cockpit/engine/APU_N1"))

defineProperty("mixture_ratio1", globalPropertyi("sim/cockpit2/engine/actuators/mixture_ratio[0]"))
defineProperty("mixture_ratio2", globalPropertyi("sim/cockpit2/engine/actuators/mixture_ratio[1]"))
defineProperty("igniters_on1", globalPropertyi("sim/cockpit/engine/igniters_on[0]"))
defineProperty("igniters_on2", globalPropertyi("sim/cockpit/engine/igniters_on[1]"))
defineProperty("ignition_on1", globalPropertyi("sim/cockpit/engine/ignition_on[0]")) --ignition key position 0 = off, 1 = left, 2 = right, 3 = both
defineProperty("ignition_on2", globalPropertyi("sim/cockpit/engine/ignition_on[1]")) --ignition key position 0 = off, 1 = left, 2 = right, 3 = both
defineProperty("ENGN_N1_1", globalPropertyf("sim/flightmodel/engine/ENGN_N1_[0]"))
defineProperty("ENGN_N1_2", globalPropertyf("sim/flightmodel/engine/ENGN_N1_[1]"))

defineProperty("eng_select", globalPropertyi("sim/an148/eng_select"))
defineProperty("eng_startup", globalPropertyi("sim/an148/eng_startup"))

start_eng1 = findCommand("sim/starters/engage_starter_1") 
start_eng2 = findCommand("sim/starters/engage_starter_2") 
-----------------
-- IMAGES
-----------------
defineProperty("background", loadImage("overhead_panel.png"))
defineProperty("digitsImage", loadImage("white_digit_strip.png", 0, 0, 16, 196))
defineProperty("fail_button", loadImage("fail_button.png"))
defineProperty("off_button", loadImage("off_button.png"))
defineProperty("apu_bleed", loadImage("apu_bleed.png"))
defineProperty("apu_state_btn", loadImage("apu_state_btn.png"))
defineProperty("ready_btn", loadImage("ready_btn.png"))


set(fuel_tank_selector, 1)
set(fuel_tank_selector_left, 1)
set(fuel_tank_selector_right, 3)

set(hydraulic_quantity, 0)
set(hydraulic_quantity2, 0)


local consumption1 = 0
local consumption2 = 0

local left_tank_fuel = get(fuel_left)
local right_tank_fuel = get(fuel_right)

function update()
-----------------
if (get(fl_fuel_tank) == 1 or get(sl_fuel_tank) == 1) then
	set(fuel_tank_pump_on_1, 1)
else
	set(fuel_tank_pump_on_1, 0)
end
-----------------
if (get(fr_fuel_tank) == 1 or get(sr_fuel_tank) == 1) then
	set(fuel_tank_pump_on_3, 1)
else
	set(fuel_tank_pump_on_3, 0)
end
-----------------
if (get(fm_fuel_tank) == 1 or get(sm_fuel_tank) == 1) then
	set(fuel_tank_pump_on_2, 1)
else
	set(fuel_tank_pump_on_2, 0)
end
-----------------
consumption1 = left_tank_fuel - get(fuel_left)
consumption2 = right_tank_fuel - get(fuel_right)
-----------------
if get(eng_startup) == 1 then
	if get(eng_select) == 0 then
		if get(ENGN_N1_1) < 28 then
			commandBegin(start_eng1)
			if get(ENGN_N1_1) > 20 and get(ENGN_N1_1) < 28 then
				set(ignition_on1, 1)
				set(igniters_on1, 1)
			else
				set(ignition_on1, 0)
				set(igniters_on1, 0)
				set(eng_select, -1)
			end
		else
			commandEnd(start_eng1)
		end
	end
	
	if get(eng_select) == 1 then
		if get(ENGN_N1_2) < 28 then
			commandBegin(start_eng2)
			if get(ENGN_N1_2) > 20 and get(ENGN_N1_2) < 28 then
				set(ignition_on2, 1)
				set(igniters_on2, 1)
			else
				set(ignition_on2, 0)
				set(igniters_on2, 0)
				set(eng_select, -1)
			end
		else
			commandEnd(start_eng2)
		end
	end
end
end

components = {
---------------------------------------------------------------------
--background
texture{ 
	image = get(background),
	position = {0, 0, size[1], size[2]},
},
---------------------------------------------------------------------
--AKK1_off
texture{ 
	image = get(off_button),
	position = {389, 758, 41, 41},
	visible = function()
		return get(battery_on_1) == 0 and get(battery_fail_1) == 0
	end,
},
---------------------------------------------------------------------
--AKK2_off
texture{ 
	image = get(off_button),
	position = {469, 758, 41, 41},
	visible = function()
		return get(battery_on_2) == 0 and get(battery_fail_1) == 0
	end,
},
---------------------------------------------------------------------
--AKK3_off
texture{ 
	image = get(off_button),
	position = {549, 758, 41, 41},
	visible = function()
		return get(battery_on_3) == 0 and get(battery_fail_1) == 0
	end,
},
---------------------------------------------------------------------
--gpu_on_off
texture{ 
	image = get(off_button),
	position = {390, 482, 41, 41},
	visible = function()
		return get(gpu_on) == 0
	end,
},
---------------------------------------------------------------------
--AKK1_fail
texture{ 
	image = get(fail_button),
	position = {389, 758, 41, 41},
	visible = function()
		return get(battery_fail_1) == 1
	end,
},
---------------------------------------------------------------------
--AKK2_fail
texture{ 
	image = get(fail_button),
	position = {469, 758, 41, 41},
	visible = function()
		return get(battery_fail_2) == 1
	end,
},
---------------------------------------------------------------------
--AKK3_fail
texture{ 
	image = get(fail_button),
	position = {549, 758, 41, 41},
	visible = function()
		return get(battery_fail_3) == 1
	end,
},
---------------------------------------------------------------------
--AKK1
switch {
	position = {389, 758, 41, 41},
	state = function()        
		return get(battery_on_1) ~= 0 
	end,
   
onMouseClick = function()      
	if get(battery_on_1) ~= 0 then
		set(battery_on_1, 0)
	else
		set(battery_on_1, 1)
	end
return true;  
end   
}, 
-----------------------------------------------------------------------------------------------------
--AKK2
switch {
	position = {469, 758, 41, 41},   
	state = function()        
		return get(battery_on_2) ~= 0  
	end,
   
onMouseClick = function()      
	if get(battery_on_2) ~= 0 then
		set(battery_on_2, 0)
	else
		set(battery_on_2, 1)
	end
return true;  
end   
}, 
-----------------------------------------------------------------------------------------------------
--AKK3
switch {
	position = {549, 758, 41, 41},  
	state = function()        
		return get(battery_on_3) ~= 0    
	end,
   
onMouseClick = function()      
	if get(battery_on_3) ~= 0 then
		set(battery_on_3, 0)
	else
		set(battery_on_3, 1)
	end
return true;  
end   
}, 
-----------------------------------------------------------------------------------------------------


-----------------------------------------------------------------------------------------------------
--inverter_off1
texture{ 
	image = get(off_button),
	position = {389, 689, 41, 41},
	visible = function()
		return get(inverter_on_1) == 0
	end,
},
---------------------------------------------------------------------
--inverter_off2
texture{ 
	image = get(off_button),
	position = {469, 689, 41, 41},
	visible = function()
		return get(inverter_on_2) == 0
	end,
},
---------------------------------------------------------------------
--inverter_off3
texture{ 
	image = get(off_button),
	position = {549, 689, 41, 41},
	visible = function()
		return get(inverter_on_3) == 0
	end,
},
---------------------------------------------------------------------

---------------------------------------------------------------------
--inverter_off1
switch {
	position = {389, 688, 41, 41},
	state = function()        
		return get(inverter_on_1) ~= 0 
	end,
   
onMouseClick = function()      
	if get(inverter_on_1) ~= 0 then
		set(inverter_on_1, 0)
	else
		set(inverter_on_1, 1)
	end
return true;  
end   
}, 
-----------------------------------------------------------------------------------------------------
--inverter_off2
switch {
	position = {469, 688, 41, 41},   
	state = function()        
		return get(inverter_on_2) ~= 0  
	end,
   
onMouseClick = function()      
	if get(inverter_on_2) ~= 0 then
		set(inverter_on_2, 0)
	else
		set(inverter_on_2, 1)
	end
return true;  
end   
}, 
-----------------------------------------------------------------------------------------------------
--inverter_off3
switch {
	position = {549, 688, 41, 41},  
	state = function()        
		return get(inverter_on_3) ~= 0    
	end,
   
onMouseClick = function()      
	if get(inverter_on_3) ~= 0 then
		set(inverter_on_3, 0)
	else
		set(inverter_on_3, 1)
	end
return true;  
end   
}, 
-----------------------------------------------------------------------------------------------------


-----------------------------------------------------------------------------------------------------
--gen1_off
texture{ 
	image = get(off_button),
	position = {389, 619, 41, 41},
	visible = function()
		return get(generator_on_1) == 0 and get(gen_fail_1) == 0
	end,
},
---------------------------------------------------------------------
--gen_apu_off
texture{ 
	image = get(off_button),
	position = {469, 619, 41, 41},
	visible = function()
		return get(generator_on_apu) == 0
	end,
},
---------------------------------------------------------------------
--gen2_off
texture{ 
	image = get(off_button),
	position = {549, 619, 41, 41},
	visible = function()
		return get(generator_on_2) == 0 and get(gen_fail_2) == 0
	end,
},
---------------------------------------------------------------------
--gen1_fail
texture{ 
	image = get(fail_button),
	position = {389, 619, 41, 41},
	visible = function()
		return get(gen_fail_1) == 1
	end,
},
---------------------------------------------------------------------
--gen2_fail
texture{ 
	image = get(fail_button),
	position = {549, 619, 41, 41},
	visible = function()
		return get(gen_fail_2) == 1
	end,
},
---------------------------------------------------------------------
--gen1
switch {
	position = {389, 620, 41, 41},
	state = function()        
		return get(generator_on_1) ~= 0 
	end,
   
onMouseClick = function()      
	if get(generator_on_1) ~= 0 then
		set(generator_on_1, 0)
	else
		set(generator_on_1, 1)
	end
return true;  
end   
}, 
-----------------------------------------------------------------------------------------------------
--gen_apu
switch {
	position = {469, 620, 41, 41},   
	state = function()        
		return get(generator_on_apu) ~= 0  
	end,
   
onMouseClick = function()      
	if get(generator_on_apu) ~= 0 then
		set(generator_on_apu, 0)
	else
		set(generator_on_apu, 1)
	end
return true;  
end   
}, 
-----------------------------------------------------------------------------------------------------
--gen2
switch {
	position = {549, 620, 41, 41},  
	state = function()        
		return get(generator_on_2) ~= 0    
	end,
   
onMouseClick = function()      
	if get(generator_on_2) ~= 0 then
		set(generator_on_2, 0)
	else
		set(generator_on_2, 1)
	end
return true;  
end   
}, 
-----------------------------------------------------------------------------------------------------
--gpu_on
switch {
	position = {393, 485, 41, 41},  
	state = function()        
		return get(gpu_on) ~= 0    
	end,
   
onMouseClick = function()      
	if get(gpu_on) ~= 0 then
		set(gpu_on, 0)
	else
		set(gpu_on, 1)
	end
return true;  
end   
}, 
-----------------------------------------------------------------------------------------------------


-----------------------------------------------------------------------------------------------------
--hyd_pump1
texture{ 
	image = get(off_button),
	position = {63, 385, 41, 41},
	visible = function()
		return get(hydraulic_quantity) == 0 and get(rel_hydpmp) == 0
	end,
},
---------------------------------------------------------------------
--hyd_pump2
texture{ 
	image = get(off_button),
	position = {254, 385, 41, 41},
	visible = function()
		return get(hydraulic_quantity2) == 0 and get(rel_hydpmp2) == 0
	end,
},
---------------------------------------------------------------------
--hyd_pump1_fail
texture{ 
	image = get(fail_button),
	position = {63, 385, 41, 41},
	visible = function()
		return get(rel_hydpmp) == 1
	end,
},
---------------------------------------------------------------------
--hyd_pump2_fail
texture{ 
	image = get(fail_button),
	position = {254, 385, 41, 41},
	visible = function()
		return get(rel_hydpmp2) == 1
	end,
},
---------------------------------------------------------------------
--hyd_pump1
switch {
	position = {63, 385, 41, 41},
	state = function()        
		return get(hydraulic_quantity) ~= 0 
	end,
   
onMouseClick = function()      
	if get(hydraulic_quantity) ~= 0 then
		set(hydraulic_quantity, 0)
	else
		set(hydraulic_quantity, 1)
	end
return true;  
end   
}, 
-----------------------------------------------------------------------------------------------------
--hyd_pump2
switch {
	position = {254, 385, 41, 41}, 
	state = function()        
		return get(hydraulic_quantity2) ~= 0    
	end,
   
onMouseClick = function()      
	if get(hydraulic_quantity2) ~= 0 then
		set(hydraulic_quantity2, 0)
	else
		set(hydraulic_quantity2, 1)
	end
return true;  
end   
}, 
-----------------------------------------------------------------------------------------------------


-----------------------------------------------------------------------------------------------------
--left1_fuel_pump
texture{ 
	image = get(off_button),
	position = {690, 568, 41, 41},
	visible = function()
		return get(fl_fuel_tank) == 0
	end,
},
---------------------------------------------------------------------
--left2_fuel_pump
texture{ 
	image = get(off_button),
	position = {738, 568, 41, 41},
	visible = function()
		return get(sl_fuel_tank) == 0
	end,
},
---------------------------------------------------------------------
--right1_fuel_pump
texture{ 
	image = get(off_button),
	position = {822, 568, 41, 41},
	visible = function()
		return get(fr_fuel_tank) == 0
	end,
},
---------------------------------------------------------------------
--right2_fuel_pump
texture{ 
	image = get(off_button),
	position = {870, 568, 41, 41},
	visible = function()
		return get(sr_fuel_tank) == 0
	end,
},
---------------------------------------------------------------------
--left1_fuel_pump
switch {
	position = {690, 568, 41, 41}, 
	state = function()        
		return get(fl_fuel_tank) ~= 0    
	end,
   
onMouseClick = function()      
	if get(fl_fuel_tank) ~= 0 then
		set(fl_fuel_tank, 0)
	else
		set(fl_fuel_tank, 1)
	end
return true;  
end   
}, 
-----------------------------------------------------------------------------------------------------
--left2_fuel_pump
switch {
	position = {738, 586, 41, 41}, 
	state = function()        
		return get(sl_fuel_tank) ~= 0    
	end,
   
onMouseClick = function()      
	if get(sl_fuel_tank) ~= 0 then
		set(sl_fuel_tank, 0)
	else
		set(sl_fuel_tank, 1)
	end
return true;  
end   
}, 
-----------------------------------------------------------------------------------------------------
--right1_fuel_pump
switch {
	position = {822, 568, 41, 41}, 
	state = function()        
		return get(fr_fuel_tank) ~= 0    
	end,
   
onMouseClick = function()      
	if get(fr_fuel_tank) ~= 0 then
		set(fr_fuel_tank, 0)
	else
		set(fr_fuel_tank, 1)
	end
return true;  
end   
}, 
-----------------------------------------------------------------------------------------------------
--right2_fuel_pump
switch {
	position = {870, 568, 41, 41}, 
	state = function()        
		return get(sr_fuel_tank) ~= 0    
	end,
   
onMouseClick = function()      
	if get(sr_fuel_tank) ~= 0 then
		set(sr_fuel_tank, 0)
	else
		set(sr_fuel_tank, 1)
	end
return true;  
end   
}, 
-----------------------------------------------------------------------------------------------------
--right1_fuel_pump
texture{ 
	image = get(off_button),
	position = {757, 443, 41, 41},
	visible = function()
		return get(fm_fuel_tank) == 0
	end,
},
---------------------------------------------------------------------
--right2_fuel_pump
texture{ 
	image = get(off_button),
	position = {804, 443, 41, 41},
	visible = function()
		return get(sm_fuel_tank) == 0
	end,
},
---------------------------------------------------------------------
--ring_valve_pump
texture{ 
	image = get(off_button),
	position = {781, 626, 41, 41},
	visible = function()
		return get(fuel_tank_selector) == 1
	end,
},
---------------------------------------------------------------------
--mid1_fuel_pump
switch {
	position = {756, 442, 41, 41}, 
	state = function()        
		return get(fm_fuel_tank) ~= 0    
	end,
   
onMouseClick = function()      
	if get(fm_fuel_tank) ~= 0 then
		set(fm_fuel_tank, 0)
	else
		set(fm_fuel_tank, 1)
	end
return true;  
end   
}, 
-----------------------------------------------------------------------------------------------------
--mid2_fuel_pump
switch {
	position = {803, 442, 41, 41},
	state = function()        
		return get(sm_fuel_tank) ~= 0    
	end,
   
onMouseClick = function()      
	if get(sm_fuel_tank) ~= 0 then
		set(sm_fuel_tank, 0)
	else
		set(sm_fuel_tank, 1)
	end
return true;  
end   
}, 
-----------------------------------------------------------------------------------------------------
--ring_valve_pump
switch {
	position = {784, 624, 41, 41},
	state = function()        
		return true    
	end,
  
onMouseClick = function()      
	if get(fuel_tank_selector) ~= 1 then
		set(fuel_tank_selector, 1)
		set(fuel_tank_selector_left, 1)
		set(fuel_tank_selector_right, 3)
	else
		set(fuel_tank_selector, 4)
	end
return true;  
end   
}, 
-----------------------------------------------------------------------------------------------------
    -- ff1 digits
    digitstape {
        position = { 716, 376, 60, 30},
        image = digitsImage,
        digits = 4,
        showLeadingZeros = false,
		allowNonRound = true,
        value = function()
			return consumption1
		end,
    };
---------------------------------------------------------------------
    -- ff2 digits
    digitstape {
        position = { 829, 376, 60, 30},
        image = digitsImage,
        digits = 4,
        showLeadingZeros = false,
		allowNonRound = true,
        value = function()
			return consumption2
		end,
    };
-----------------------------------------------------------------------------------------------------


-----------------------------------------------------------------------------------------------------
--eng1_aice_off
texture{ 
	image = get(off_button),
	position = {1046, 898, 41, 41},
	visible = function()
		return get(eng1_inlet) == 0
	end,
},
---------------------------------------------------------------------
--eng2_aice_off
texture{ 
	image = get(off_button),
	position = {1091, 898, 41, 41},
	visible = function()
		return get(eng2_inlet) == 0
	end,
},
---------------------------------------------------------------------
--wing_aice_off
texture{ 
	image = get(off_button),
	position = {1138, 898, 41, 41},
	visible = function()
		return get(wing_heat) == 0
	end,
},
---------------------------------------------------------------------
--rudder_aice_off
texture{ 
	image = get(off_button),
	position = {1183, 898, 41, 41},
	visible = function()
		return get(rudder_heat) == 0
	end,
},
---------------------------------------------------------------------
--pitot_pilot_off
texture{ 
	image = get(off_button),
	position = {1323, 256, 41, 41},
	visible = function()
		return get(pitot1) == 0
	end,
},
---------------------------------------------------------------------
--pitot_emer_off
texture{ 
	image = get(off_button),
	position = {1403, 256, 41, 41},
	visible = function()
		return get(emer_pitot) == 0
	end,
},
---------------------------------------------------------------------
--pitot_copilot_off
texture{ 
	image = get(off_button),
	position = {1483, 256, 41, 41},
	visible = function()
		return get(pitot2) == 0
	end,
},
---------------------------------------------------------------------
--eng1_aice
switch {
	position = {1049, 901, 41, 41},
	state = function()        
		return true    
	end,
  
onMouseClick = function()      
	if get(eng1_inlet) ~= 0 then
		set(eng1_inlet, 0)
	else
		set(eng1_inlet, 1)
	end
return true;  
end   
}, 
-----------------------------------------------------------------------------------------------------
--eng2_aice
switch {
	position = {1093, 901, 41, 41},
	state = function()        
		return true    
	end,
  
onMouseClick = function()      
	if get(eng2_inlet) ~= 0 then
		set(eng2_inlet, 0)
	else
		set(eng2_inlet, 1)
	end
return true;  
end   
}, 
-----------------------------------------------------------------------------------------------------
--wing_aice
switch {
	position = {1139, 901, 41, 41},
	state = function()        
		return true    
	end,
  
onMouseClick = function()      
	if get(wing_heat) ~= 0 then
		set(wing_heat, 0)
	else
		set(wing_heat, 1)
	end
return true;  
end   
}, 
-----------------------------------------------------------------------------------------------------
--rudder_aice
switch {
	position = {1183, 901, 41, 41},
	state = function()        
		return true    
	end,
  
onMouseClick = function()      
	if get(rudder_heat) ~= 0 then
		set(rudder_heat, 0)
	else
		set(rudder_heat, 1)
	end
return true;  
end   
}, 
-----------------------------------------------------------------------------------------------------
--emer_pitot_aice
switch {
	position = {1403, 256, 41, 41},
	state = function()        
		return true    
	end,
  
onMouseClick = function()      
	if get(emer_pitot) ~= 0 then
		set(emer_pitot, 0)
	else
		set(emer_pitot, 1)
	end
return true;  
end   
}, 
-----------------------------------------------------------------------------------------------------
--pilot_pitot_aice
switch {
	position = {1324, 256, 41, 41},
	state = function()        
		return true    
	end,
  
onMouseClick = function()      
	if get(pitot1) ~= 0 then
		set(pitot1, 0)
	else
		set(pitot1, 1)
	end
return true;  
end   
}, 
-----------------------------------------------------------------------------------------------------
--copilot_pitot_aice
switch {
	position = {1484, 256, 41, 41},
	state = function()        
		return true    
	end,
  
onMouseClick = function()      
	if get(pitot2) ~= 0 then
		set(pitot2, 0)
	else
		set(pitot2, 1)
	end
return true;  
end   
}, 
-----------------------------------------------------------------------------------------------------

-----------------------------------------------------------------------------------------------------
--APU_state
texture{ 
	image = get(apu_state_btn),
	position = {379, 314, 41, 41},
	visible = function()
		return get(APU_running) == 1
	end,
},
---------------------------------------------------------------------
--APU_rdy
texture{ 
	image = get(ready_btn),
	position = {379, 314, 41, 41},
	visible = function()
		return get(APU_N1) > 95 and get(APU_running) == 1
	end,
},
---------------------------------------------------------------------
--APU_bleed
texture{ 
	image = get(apu_bleed),
	position = {469, 314, 41, 41},
	visible = function()
		return get(APU_bleed) == 4
	end,
},
---------------------------------------------------------------------
--APU start
switch {
	position = {379, 314, 41, 41},
	state = function()        
		return true    
	end,
  
onMouseClick = function()      
	set(APU_switch, 1)	
	set(APU_running, 1)
return true;  
end   
}, 
-----------------------------------------------------------------------------------------------------
--APU stop
switch {
	position = {510, 248, 41, 41},
	state = function()        
		return true    
	end,
  
onMouseClick = function()      
	set(APU_running, 0)
	set(APU_switch, 0)
return true;  
end   
}, 
-----------------------------------------------------------------------------------------------------
--APU bleed
switch {
	position = {469, 314, 41, 41},
	state = function()        
		return true    
	end,
  
onMouseClick = function()      
	if get(APU_bleed) ~= 0 then
		set(APU_bleed, 0)
	else
		if get(APU_N1) > 95 then
			set(APU_bleed, 4)
		end
	end
return true;  
end   
}, 
-----------------------------------------------------------------------------------------------------
--ENG1_ready
texture{ 
	image = get(ready_btn),
	position = {700, 154, 41, 41},
	visible = function()
		if get(eng_select) == 0 then
			return true
		else
			return false
		end
	end,
},
---------------------------------------------------------------------
--ENG2_ready
texture{ 
	image = get(ready_btn),
	position = {860, 154, 41, 41},
	visible = function()
		if get(eng_select) == 1 then
			return true
		else
			return false
		end
	end,
},
---------------------------------------------------------------------
--PREP egn1
switch {
	position = {701, 154, 41, 41},
	state = function()        
		return true    
	end,
  
onMouseClick = function()      
	set(mixture_ratio1, 1)
	set(eng_select, 0)
return true;  
end   
}, 
-----------------------------------------------------------------------------------------------------
--PREP egn2
switch {
	position = {860, 154, 41, 41},
	state = function()        
		return true    
	end,
  
onMouseClick = function() 
	set(mixture_ratio2, 1)
	set(eng_select, 1)
return true;  
end   
}, 
-----------------------------------------------------------------------------------------------------
--startup_eng
switch {
	position = {771, 154, 41, 41},
	state = function()        
		return true    
	end,
  
onMouseClick = function() 
	if get(eng_startup) ~= 0 then
		set(eng_startup, 0)
	else
		set(eng_startup, 1)
	end
return true;  
end   
},
----------------------------------------------------------------------------------------------------- 
}