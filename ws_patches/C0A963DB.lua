apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Giants - Citizen Kabuto SLES_503.14
--comment=Widescreen Hack
eeObj.WriteMem32(0x003bc7c0,0x3fe38e39)
eeObj.WriteMem32(0x003bc978,0x3fe38e39)
end

emuObj.AddVsyncHook(widescreen)