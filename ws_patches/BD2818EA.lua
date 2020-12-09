apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Operation WinBack (PAL-M3) (SLES-50155)
--comment=Widescreen hack by ElHecht

-- 16:9
eeObj.WriteMem32(0x00248198,0x3c013f40)
eeObj.WriteMem32(0x0024819c,0x4481f000)
eeObj.WriteMem32(0x002481ac,0x461eb583)
eeObj.WriteMem32(0x001c7498,0x461e0002)
eeObj.WriteMem32(0x001c79b4,0x461ea302)
end

emuObj.AddVsyncHook(widescreen)