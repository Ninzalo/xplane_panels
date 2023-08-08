defineProperty("el_hyd_pump1_mode", globalPropertyi("sim/custom/xap/el_hyd_pump1_mode")) -- ����� ������������ 1
defineProperty("el_hyd_pump2_mode", globalPropertyi("sim/custom/xap/el_hyd_pump2_mode")) -- ����� ������������ 2
defineProperty("res_hyd_pump_mode", globalPropertyi("sim/custom/xap/res_hyd_pump_mode")) -- ����� ��������� �����
defineProperty("is_auto_hyd_on", globalPropertyi("sim/custom/xap/is_auto_hyd_on")) -- ������� �� ���������
defineProperty("is_manual_hyd_on", globalPropertyi("sim/custom/xap/is_manual_hyd_on")) -- ������� �� �������������� �����
defineProperty("hyd_press_1", globalPropertyf("sim/cockpit2/hydraulics/indicators/hydraulic_pressure_1")) -- �������� � ����������
defineProperty("hyd_press_2", globalPropertyf("sim/cockpit2/hydraulics/indicators/hydraulic_pressure_2")) -- �������� � ����������

local nowcounter = 0
local framecounter = 20

set(el_hyd_pump1_mode, 1) -- ��������� ��� �������������
set(el_hyd_pump2_mode, 1)
set(res_hyd_pump_mode, 1)

function update() -- � ������ 20-� �����
if nowcounter > framecounter then

--��������� ���� �� ��������� ��� ��� ������������
if get(el_hyd_pump1_mode)== 1 then
if get(el_hyd_pump2_mode)== 1 then
if get(res_hyd_pump_mode)== 1 then -- ��������� �����
set(el_hyd_pump_on, 0) -- ��������� �����
set(is_auto_hyd_on, 0) -- ���������� �������� ��������
set(is_manual_hyd_on, 0) -- ���������� �������� ������� ������
end
end
end

-- ��������� ���� �� �������� ����� ���� ������������ ��� ��������� ����� � ������ ������, ���� �� - �������� ���������
if get(el_hyd_pump1_mode) == 2 then -- ��������, ���� ���� �������� ����� 1
set(el_hyd_pump_on, 1)
set(is_manual_hyd_on, 1)
end
if get(el_hyd_pump2_mode) == 2 then -- ��������, ���� ���� �������� ����� 2
set(el_hyd_pump_on, 1)
set(is_manual_hyd_on, 1)
end
if get(res_hyd_pump_mode) == 2 then -- ��������, ���� ���� �������� ��������� �����
set(el_hyd_pump_on, 1)
set(is_manual_hyd_on, 1)
end

-- ��������� ���� �� �������� ����� ���� ������������ ��� ��������� ����� �� �������
if get(el_hyd_pump1_mode) == 0 then -- ��������� ���, ���� ���� �������� ����� 1
set(is_auto_hyd_on, 1)
end
if get(el_hyd_pump2_mode) == 0 then -- ��������� ���, ���� ���� �������� ����� 2
set(is_auto_hyd_on, 1)
end
if get(res_hyd_pump_mode) == 0 then -- ��������� ���, ���� ���� �������� ��������� �����
set(is_auto_hyd_on, 1)
end

-- ���� ��������� - �������� ��������� ����� �� �������� ���� 3000
-- ���� �� ����� �� ���� �� ���� �� ���� �������� �������������..
framecounter = 20 -- ��������� ������� �������� �������� (�� ��� ����������)
if get(is_auto_hyd_on) == 1 then -- ���� ��������� ������� ���� �� � ����� �� ����
		if get(is_manual_hyd_on) == 0 then -- � ����� ��� �� ���� �������� �������������
				if get(hyd_press_1) < 2900 then -- ����������� �� �������
				set(el_hyd_pump_on, 1) -- � �������� �����
				framecounter = 1000 -- � ������ �� ������ ��� 1000 ������
				end
				if get(hyd_press_2) < 2900 then -- ����������� �� �������
				set(el_hyd_pump_on, 1) -- � �������� �����
				framecounter = 1000 -- � ������ �� ������ ��� 1000 ������
				end
		end
end

nowcounter = 0 -- ���������� ������� ������

else -- 
	nowcounter = nowcounter + 1 --����������� ������� ������
end -- counter

end -- update end