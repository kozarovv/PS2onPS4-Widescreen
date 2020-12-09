apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Tekken 5 (NTSC-K) (SCKA_200.49)
--comment=Widescreen hack by nemesis2000, porting by 99skull

eeObj.WriteMem32(0x00333F00,0x3C013F40)

--applies both fov+ only for widescreen mode
eeObj.WriteMem32(0x00333F30,0x3C010015)
eeObj.WriteMem32(0x00333F34,0xC62D96C4)
eeObj.WriteMem32(0x00333F54,0x46016B42)
eeObj.WriteMem32(0x00333F58,0x46010843)
eeObj.WriteMem32(0x00333F70,0x460D1083)
eeObj.WriteMem32(0x00333F74,0x460D0843)

--render fix
eeObj.WriteMem32(0x00222904,0x3C013F2B)
eeObj.WriteMem32(0x00222914,0x44810000)
eeObj.WriteMem32(0x00222918,0x46006302)
end

emuObj.AddVsyncHook(widescreen)