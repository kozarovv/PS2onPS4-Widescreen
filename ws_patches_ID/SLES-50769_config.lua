apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Mister Mosquito SLES-50769 
--comment=Widescreen Hack- Esppiral :)
eeObj.WriteMem32(0x001bcee0,0x3c023f40)
eeObj.WriteMem32(0x001bcc40,0x3c023f40)
end

emuObj.AddVsyncHook(widescreen)