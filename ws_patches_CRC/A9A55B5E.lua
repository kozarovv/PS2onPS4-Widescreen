apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=S.L.A.I. - Steel Lancer Arena International SLUS_209.69
--comment=Widescreen Hack
eeObj.WriteMem32(0x00267978,0x3c033f40)
end

emuObj.AddVsyncHook(widescreen)