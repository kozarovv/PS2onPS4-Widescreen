apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Unison (J)(SLPS-25010)
--comment=Widescreen Hack by Arapapa

--Widescreen hack 16:9

--Matrix Hack
eeObj.WriteMem32(0x001e0e14,0x3c013f40)
eeObj.WriteMem32(0x001e0e18,0x44810000)
eeObj.WriteMem32(0x001e0e20,0x4600c602)
end

emuObj.AddVsyncHook(widescreen)