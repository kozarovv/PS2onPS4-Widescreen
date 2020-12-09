apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by ElHecht (NTSC-K by Arapapa)

-- 16:9
eeObj.WriteMem32(0x00131ba8,0x080c91f2)
eeObj.WriteMem32(0x00131bac,0x00000000)

eeObj.WriteMem32(0x003247c8,0x3c013f40)
eeObj.WriteMem32(0x003247cc,0x4481f000)
eeObj.WriteMem32(0x003247d0,0x46000803)
eeObj.WriteMem32(0x003247d4,0x461e0002)
eeObj.WriteMem32(0x003247d8,0xe7808744)
eeObj.WriteMem32(0x003247dc,0x0804c6eb)


--Scenario mode
--eeObj.WriteMem32(0x00429834,0x3f23d706)

--VS mode
--eeObj.WriteMem32(0x0044F0C0,0x3f23d706)
end

emuObj.AddVsyncHook(widescreen)