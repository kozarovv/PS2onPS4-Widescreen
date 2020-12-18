apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Def Jam - Fight for NY (J)(SLPM-65907)
--comment=Widescreen hack by ElHecht (NTSC-J by Arapapa)

-- 16:9

eeObj.WriteMem32(0x0021c82c,0x3c013f40)
eeObj.WriteMem32(0x0021c840,0x4481f000)
eeObj.WriteMem32(0x0021c858,0x461ef743)
eeObj.WriteMem32(0x0021c870,0x461eef43)
eeObj.WriteMem32(0x0021c928,0xe61e0120)
eeObj.WriteMem32(0x0021ca60,0xe61d0158)
eeObj.WriteMem32(0x0021ca64,0xe61d015c)


eeObj.WriteMem32(0x0021d014,0x46010a83)
eeObj.WriteMem32(0x0021d018,0x460a5340)
eeObj.WriteMem32(0x0021d024,0x3c013f40)
eeObj.WriteMem32(0x0021d028,0x4481f000)
eeObj.WriteMem32(0x0021d058,0x46005247)
eeObj.WriteMem32(0x0021d05c,0x461e2103)
end

emuObj.AddVsyncHook(widescreen)