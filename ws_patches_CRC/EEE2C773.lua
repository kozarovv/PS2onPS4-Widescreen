apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Dokapon Kingdom (J) (SLPM_66878)
--comment=Widescreen Hack (pnach by Arapapa)

eeObj.WriteMem32(0x00436a98,0x3c023f22)
end

emuObj.AddVsyncHook(widescreen)