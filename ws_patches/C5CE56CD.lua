apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Airborne Troops - Countdown to D-Day (U)(SLUS-21125)
--comment=Widescreen Hack by Arapapa

--Widescreen hack 16:9

--X-Fov
--1042023c 2d808000 00008244
eeObj.WriteMem32(0x0040775c,0x3c024240)

----------------------------------------------
--X-Fov (Needs render fix)
--eeObj.WriteMem32(0x0013e9d4,0x08044e64)

--eeObj.WriteMem32(0x00113990,0x46070202)
--eeObj.WriteMem32(0x00113994,0x3C013F40)
--eeObj.WriteMem32(0x00113998,0x4481F000)
--eeObj.WriteMem32(0x0011399C,0x461e4202)
--eeObj.WriteMem32(0x001139A0,0x0804fa76)
end

emuObj.AddVsyncHook(widescreen)