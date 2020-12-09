apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by ElHecht
--comment=game still needs black bar fix/removal in cut-scenes

-- 16:9
eeObj.WriteMem32(0x00247644,0x3c013f40)
eeObj.WriteMem32(0x00247650,0x4481f000)
eeObj.WriteMem32(0x00247654,0x461ea782)
eeObj.WriteMem32(0x00247664,0xe61e0000)
eeObj.WriteMem32(0x002caa88,0x3c013f40)
eeObj.WriteMem32(0x002caa8c,0x4481f000)
eeObj.WriteMem32(0x002caaac,0x461e0542)
end

emuObj.AddVsyncHook(widescreen)