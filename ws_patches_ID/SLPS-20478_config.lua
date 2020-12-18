apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Simple 2000 Series Vol. 109 - The Taxi 2 (J)(SLPS-20478)
--comment=Widescreen Hack by Arapapa

--Widescreen hack 16:9

--X-Fov (Car)
eeObj.WriteMem32(0x00155ec4,0x3c013f40)
eeObj.WriteMem32(0x00155ec8,0x44810000)
eeObj.WriteMem32(0x00155ed0,0x4600c602)

--X-Fov (Background)
eeObj.WriteMem32(0x001afc74,0x3F400000)
end

emuObj.AddVsyncHook(widescreen)