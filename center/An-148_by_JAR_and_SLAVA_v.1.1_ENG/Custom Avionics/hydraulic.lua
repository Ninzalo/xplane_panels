defineProperty("el_hyd_pump1_mode", globalPropertyi("sim/custom/xap/el_hyd_pump1_mode")) -- режим электропомпы 1
defineProperty("el_hyd_pump2_mode", globalPropertyi("sim/custom/xap/el_hyd_pump2_mode")) -- режим электропомпы 2
defineProperty("res_hyd_pump_mode", globalPropertyi("sim/custom/xap/res_hyd_pump_mode")) -- режим резервной помпы
defineProperty("is_auto_hyd_on", globalPropertyi("sim/custom/xap/is_auto_hyd_on")) -- включен ли авторежим
defineProperty("is_manual_hyd_on", globalPropertyi("sim/custom/xap/is_manual_hyd_on")) -- включен ли принудительный режим
defineProperty("hyd_press_1", globalPropertyf("sim/cockpit2/hydraulics/indicators/hydraulic_pressure_1")) -- давление в магистрали
defineProperty("hyd_press_2", globalPropertyf("sim/cockpit2/hydraulics/indicators/hydraulic_pressure_2")) -- давление в магистрали

local nowcounter = 0
local framecounter = 20

set(el_hyd_pump1_mode, 1) -- выключаем все электронасосы
set(el_hyd_pump2_mode, 1)
set(res_hyd_pump_mode, 1)

function update() -- в каждом 20-м кадре
if nowcounter > framecounter then

--проверяем были ли выключены все три электропомпы
if get(el_hyd_pump1_mode)== 1 then
if get(el_hyd_pump2_mode)== 1 then
if get(res_hyd_pump_mode)== 1 then -- выключаем помпу
set(el_hyd_pump_on, 0) -- выключаем помпу
set(is_auto_hyd_on, 0) -- сбрасываем значение автомата
set(is_manual_hyd_on, 0) -- сбрасываем значение ручного режима
end
end
end

-- проверяем была ли включена какая либо электропомпа или резервная помпа в ручном режиме, если да - включаем дефолтную
if get(el_hyd_pump1_mode) == 2 then -- включаем, если была включена помпа 1
set(el_hyd_pump_on, 1)
set(is_manual_hyd_on, 1)
end
if get(el_hyd_pump2_mode) == 2 then -- включаем, если была включена помпа 2
set(el_hyd_pump_on, 1)
set(is_manual_hyd_on, 1)
end
if get(res_hyd_pump_mode) == 2 then -- включаем, если была включена резервная помпа
set(el_hyd_pump_on, 1)
set(is_manual_hyd_on, 1)
end

-- проверяем была ли включена какая либо электропомпа или резервная помпа на автомат
if get(el_hyd_pump1_mode) == 0 then -- авторежим ВКЛ, если была включена помпа 1
set(is_auto_hyd_on, 1)
end
if get(el_hyd_pump2_mode) == 0 then -- авторежим ВКЛ, если была включена помпа 2
set(is_auto_hyd_on, 1)
end
if get(res_hyd_pump_mode) == 0 then -- авторежим ВКЛ, если была включена резервная помпа
set(is_auto_hyd_on, 1)
end

-- если авторежим - включаем дефолтную помпу по давлению ниже 3000
-- если до этого ни одна из помп не была включена принудительно..
framecounter = 20 -- фиксируем обычное значение счетчика (не для авторежима)
if get(is_auto_hyd_on) == 1 then -- если авторежим включен хотя бы у одной из помп
		if get(is_manual_hyd_on) == 0 then -- и помпа уже не была включена принудительно
				if get(hyd_press_1) < 2900 then -- срабатываем по условию
				set(el_hyd_pump_on, 1) -- и включаем помпу
				framecounter = 1000 -- и ничего не меняем еще 1000 кадров
				end
				if get(hyd_press_2) < 2900 then -- срабатываем по условию
				set(el_hyd_pump_on, 1) -- и включаем помпу
				framecounter = 1000 -- и ничего не меняем еще 1000 кадров
				end
		end
end

nowcounter = 0 -- сбрасываем счетчик кадров

else -- 
	nowcounter = nowcounter + 1 --увеличиваем счетчик кадров
end -- counter

end -- update end