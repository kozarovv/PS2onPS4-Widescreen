apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Detective Gakuen Q (NTSC-J)(SLPM-65450)
--comment=Widescreen hack by Arapapa

--Characters ratio fix

eeObj.WriteMem32(0x00428D88,0x3F400000)
end

emuObj.AddVsyncHook(widescreen)