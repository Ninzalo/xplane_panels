size = {2048, 2048}

defineProperty("battery_on_1", globalPropertyi("sim/cockpit2/electrical/battery_on[0]"))
defineProperty("battery_on_2", globalPropertyi("sim/cockpit2/electrical/battery_on[1]"))
defineProperty("battery_on_3", globalPropertyi("sim/cockpit2/electrical/battery_on[2]"))
defineProperty("inverter_on_1", globalPropertyi("sim/cockpit2/electrical/inverter_on[0]"))
defineProperty("inverter_on_2", globalPropertyi("sim/cockpit2/electrical/inverter_on[1]"))
defineProperty("inverter_on_3", globalPropertyi("sim/an148/inverter_on_3"))
defineProperty("generator_on_1", globalPropertyi("sim/cockpit2/electrical/generator_on[0]"))
defineProperty("generator_on_2", globalPropertyi("sim/cockpit2/electrical/generator_on[1]"))
defineProperty("generator_on_apu", globalPropertyi("sim/cockpit2/electrical/APU_generator_on"))
defineProperty("gpu_on", globalPropertyf("sim/cockpit/electrical/gpu_on"))

defineProperty("dc_bus", globalPropertyi("sim/an148/dc_bus"))

function update()
--------------------
if get(battery_on_1) == 1 or get(battery_on_2) == 1 or get(battery_on_3) == 1 then
	set(dc_bus, 1)
elseif get(generator_on_1) == 1 or get(generator_on_2) == 1 or get(generator_on_3) == 1 or get(generator_on_apu) == 1 or get(gpu_on) == 1 then
	if get(inverter_on_1) == 1 or get(inverter_on_2) == 1 or get(inverter_on_3) == 1 then
		set(dc_bus, 1)
	else
		set(dc_bus, 0)
	end
else
	set(dc_bus, 0)
end
--------------------
end