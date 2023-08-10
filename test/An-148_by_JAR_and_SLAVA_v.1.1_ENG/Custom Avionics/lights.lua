defineProperty("battery_on", globalPropertyi("sim/cockpit/electrical/battery_on")); -- включена ли батарея
defineProperty("cockpit_light_ratio_main",globalPropertyf("sim/custom/xap/cockpit_light_ratio_main"));

local lights_up = 0
local lights_dn = 0
local old_akb_status = 0

local nowcounter = 0
local framecounter = 50
local newlightset = 0



function update() -------------------------------------------------------------------------------------------

-----------------------------------------------------------------------------------------------
-- если был активирован режим lights_up
if lights_up > 0 then
	if get(cockpit_light_ratio_main) < 0.5 then
	newlightset = get(cockpit_light_ratio_main) + 0.005
	set(cockpit_light_ratio_main, newlightset)
	nowcounter = 50
	else
	lights_up = 0 -- выключаем режим лайтап
	end
end

-----------------------------------------------------------------------------------------------
-- если был активирован режим lights_dn
if lights_dn > 0 then
	if get(cockpit_light_ratio_main) > 0.01 then
	newlightset = get(cockpit_light_ratio_main) - 0.005
	set(cockpit_light_ratio_main, newlightset)
	nowcounter = 0
	else
	lights_dn = 0 -- выключаем режим лайтап
	end
end


-----------------------------------------------------------------------------------------------
if nowcounter > framecounter then -- в каждом 50-м кадре проверяем было ли вкл/выкл батареи
		if get(battery_on) > old_akb_status then -- если батарею включили 
			lights_up = 1                      -- активируем режим lights_up
			old_akb_status = 1                 -- и фиксируем состояние батареи
		end

		if get(battery_on) < old_akb_status then -- если батарею выключили 
			lights_dn = 1                      -- активируем режим lights_dn
			old_akb_status = 0                 -- и фиксируем состояние батареи
		end
		nowcounter = 0 -- сбрасываем счетчик кадров

else
		nowcounter = nowcounter + 1 -- увеличиваем счетчик кадров
end -- counter


end -- update end ------------------------------------------------------------------------------------------
