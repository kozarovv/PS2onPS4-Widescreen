apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Leisure Suit Larry - Magna Cum Laude - Uncut (PAL-E) (SLES-52641)
--comment=Widescreen Hack (16:9) by ElHecht

-- 16:9
eeObj.WriteMem32(0x002e5fd0,0x080fb7cc)
eeObj.WriteMem32(0x002e5fd4,0x00000000)

eeObj.WriteMem32(0x003edf30,0x3c013f40)
eeObj.WriteMem32(0x003edf34,0x4481f000)
eeObj.WriteMem32(0x003edf38,0x46020082)
eeObj.WriteMem32(0x003edf3c,0x46020842)
eeObj.WriteMem32(0x003edf40,0x461e0843)
eeObj.WriteMem32(0x003edf44,0x080b97f5)
end

emuObj.AddVsyncHook(widescreen)