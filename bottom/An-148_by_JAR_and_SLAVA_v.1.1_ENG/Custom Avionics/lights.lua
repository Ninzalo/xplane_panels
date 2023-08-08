defineProperty("battery_on", globalPropertyi("sim/cockpit/electrical/battery_on")); -- �������� �� �������
defineProperty("cockpit_light_ratio_main",globalPropertyf("sim/custom/xap/cockpit_light_ratio_main"));

local lights_up = 0
local lights_dn = 0
local old_akb_status = 0

local nowcounter = 0
local framecounter = 50
local newlightset = 0



function update() -------------------------------------------------------------------------------------------

-----------------------------------------------------------------------------------------------
-- ���� ��� ����������� ����� lights_up
if lights_up > 0 then
	if get(cockpit_light_ratio_main) < 0.5 then
	newlightset = get(cockpit_light_ratio_main) + 0.005
	set(cockpit_light_ratio_main, newlightset)
	nowcounter = 50
	else
	lights_up = 0 -- ��������� ����� ������
	end
end

-----------------------------------------------------------------------------------------------
-- ���� ��� ����������� ����� lights_dn
if lights_dn > 0 then
	if get(cockpit_light_ratio_main) > 0.01 then
	newlightset = get(cockpit_light_ratio_main) - 0.005
	set(cockpit_light_ratio_main, newlightset)
	nowcounter = 0
	else
	lights_dn = 0 -- ��������� ����� ������
	end
end


-----------------------------------------------------------------------------------------------
if nowcounter > framecounter then -- � ������ 50-� ����� ��������� ���� �� ���/���� �������
		if get(battery_on) > old_akb_status then -- ���� ������� �������� 
			lights_up = 1                      -- ���������� ����� lights_up
			old_akb_status = 1                 -- � ��������� ��������� �������
		end

		if get(battery_on) < old_akb_status then -- ���� ������� ��������� 
			lights_dn = 1                      -- ���������� ����� lights_dn
			old_akb_status = 0                 -- � ��������� ��������� �������
		end
		nowcounter = 0 -- ���������� ������� ������

else
		nowcounter = nowcounter + 1 -- ����������� ������� ������
end -- counter


end -- update end ------------------------------------------------------------------------------------------
