apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=James Bond 007 - From Russia With Love (J)(SLPM-66322)
--comment=Widescreen hack by nemesis2000 (NTSC-J by Arapapa)

--Widescreen hack 16:9

eeObj.WriteMem32(0x0040570c,0x46140002)
eeObj.WriteMem32(0x00405710,0x27a50030)
eeObj.WriteMem32(0x00405714,0x46010003)
eeObj.WriteMem32(0x00405718,0x3c013f40)
eeObj.WriteMem32(0x0040571c,0x44810800)
eeObj.WriteMem32(0x00405720,0x4601a503)
eeObj.WriteMem32(0x00405724,0xe7b40030)
eeObj.WriteMem32(0x00405728,0x46020002)
eeObj.WriteMem32(0x0040572c,0x0c0c8826)
eeObj.WriteMem32(0x00405730,0xe7a00034)
eeObj.WriteMem32(0x00405734,0x7bb00050)
eeObj.WriteMem32(0x00405738,0xdfbf0040)
eeObj.WriteMem32(0x0040573c,0xc7b40060)
eeObj.WriteMem32(0x00405740,0x03e00008)
eeObj.WriteMem32(0x00405744,0x27bd0070)
end

emuObj.AddVsyncHook(widescreen)