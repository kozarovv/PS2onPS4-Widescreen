apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Knights Of The Temple II (PAL-M5) (SLES-53645)
--comment=Widescreen hack by ElHecht

-- 16:9
eeObj.WriteMem32(0x001034e4,0x3c013f40)
eeObj.WriteMem32(0x001034e8,0x4481f000)
eeObj.WriteMem32(0x00103564,0x461e6302)

eeObj.WriteMem32(0x0018c764,0x3c013f40)
eeObj.WriteMem32(0x0018c768,0x4481f000)
eeObj.WriteMem32(0x0018c76c,0x461e8483)

eeObj.WriteMem32(0x0018b920,0x3c013f40)
eeObj.WriteMem32(0x0018b924,0x4481f000)
eeObj.WriteMem32(0x0018b940,0x461e4a42)

eeObj.WriteMem32(0x006c4984,0x3faaaaab)
eeObj.WriteMem32(0x0018a254,0x3c013faa)
eeObj.WriteMem32(0x0018a274,0xafa10000)
end

emuObj.AddVsyncHook(widescreen)