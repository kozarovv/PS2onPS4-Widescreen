apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=The Lord of the Rings - The Fellowship of the Ring (NTSC-U) (SLUS-20520)
--comment=Widescreen hack by ElHecht

-- 16:9
eeObj.WriteMem32(0x001473e0,0x08100078)
eeObj.WriteMem32(0x001473e4,0x00000000)
eeObj.WriteMem32(0x004001e0,0x3c013f40)
eeObj.WriteMem32(0x004001e4,0x4481f000)
eeObj.WriteMem32(0x004001e8,0x461e0002)
eeObj.WriteMem32(0x004001ec,0xe6000228)
eeObj.WriteMem32(0x004001f0,0x461e0842)
eeObj.WriteMem32(0x004001f4,0xe601022c)
eeObj.WriteMem32(0x004001f8,0x08051cf9)

eeObj.WriteMem32(0x002790e4,0x3c013edf)

eeObj.WriteMem32(0x001fbee0,0x3c013f40)
end

emuObj.AddVsyncHook(widescreen)