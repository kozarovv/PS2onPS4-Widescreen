apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Vib Ripple (J)(SCPS-11032)
--comment=Widescreen Hack by Arapapa

--Widescreen hack 16:9

eeObj.WriteMem32(0x001e6c14,0x3c013f40)
eeObj.WriteMem32(0x001e6c18,0x44810000)
eeObj.WriteMem32(0x001e6c20,0x4600c602)
end

emuObj.AddVsyncHook(widescreen)