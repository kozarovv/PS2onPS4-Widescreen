apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Simple 2000 Series Vol.112 - The Tousou Highway 2 - Road Warrior 2050 (J)(SLPS-20481)
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

eeObj.WriteMem32(0x001e5f4c,0x3c013f40)
eeObj.WriteMem32(0x001e5f50,0x44810000)
eeObj.WriteMem32(0x001e5f58,0x4600c602)
end

emuObj.AddVsyncHook(widescreen)