apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Jet Ion GP (E)(SLES-50544)
--comment=Widescreen Hack by Arapapa

--Widescreen hack 16:9

eeObj.WriteMem32(0x0029df94,0x3c013f40)
eeObj.WriteMem32(0x0029df98,0x44810000)
eeObj.WriteMem32(0x0029dfa0,0x4600c602)
end

emuObj.AddVsyncHook(widescreen)