apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by Arapapa

--Widescreen 16:9

eeObj.WriteMem32(0x00104f60,0x08082f30)

eeObj.WriteMem32(0x0020bcc0,0x4601a503)
eeObj.WriteMem32(0x0020bcc4,0x3c013faa)
eeObj.WriteMem32(0x0020bcc8,0x3421aaab)
eeObj.WriteMem32(0x0020bccc,0x4481f000)
eeObj.WriteMem32(0x0020bcd0,0x461ea502)
eeObj.WriteMem32(0x0020bcd4,0x080413d9)
end

emuObj.AddVsyncHook(widescreen)