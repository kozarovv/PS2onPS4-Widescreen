apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=V.I.P. (PAL-M5) (SLES-50730)
--comment=Widescreen hack by ElHecht

-- 16:9
eeObj.WriteMem32(0x001e46a0,0x3c013f40)
eeObj.WriteMem32(0x001e46a4,0x4481f000)
eeObj.WriteMem32(0x001e46b8,0x461e0343)
eeObj.WriteMem32(0x001e46bc,0x46006b07)
eeObj.WriteMem32(0x0024c810,0x3c02437a)
end

emuObj.AddVsyncHook(widescreen)