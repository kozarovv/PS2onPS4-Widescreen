apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

eeObj.WriteMem32(0x0021ccc0,0x080e7014)
eeObj.WriteMem32(0x0039c050,0x46030842)
eeObj.WriteMem32(0x0039c054,0x3c013f40)
eeObj.WriteMem32(0x0039c058,0x4481f000)
eeObj.WriteMem32(0x0039c05c,0x461e0842)
eeObj.WriteMem32(0x0039c060,0x08087331)

end

emuObj.AddVsyncHook(widescreen)