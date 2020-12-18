apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Leisure Suit Larry - Magna Cum Laude (NTSC-U) (SLUS-20956)
--comment=Widescreen hack by ElHecht

-- 16:9
eeObj.WriteMem32(0x002e4850,0x080fb09a)
eeObj.WriteMem32(0x002e4854,0x00000000)

eeObj.WriteMem32(0x003ec268,0x3c013f40)
eeObj.WriteMem32(0x003ec26c,0x4481f000)
eeObj.WriteMem32(0x003ec270,0x46020082)
eeObj.WriteMem32(0x003ec274,0x46020842)
eeObj.WriteMem32(0x003ec278,0x461e0843)
eeObj.WriteMem32(0x003ec27c,0x080b9215)
end

emuObj.AddVsyncHook(widescreen)