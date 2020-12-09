apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack by Arapapa

--Widescreen hack 16:9

--Gameplay
eeObj.WriteMem32(0x0013ae3c,0x3c023f19)
eeObj.WriteMem32(0x0013ae44,0x3442999a)

--Menu
eeObj.WriteMem32(0x0014ec3c,0x3c023f19)
eeObj.WriteMem32(0x0014ec40,0x3442999a)

--Menu 2
eeObj.WriteMem32(0x001ee000,0x3c023f10)
eeObj.WriteMem32(0x001ee004,0x3442999a)

--2D characters and Text Box
--eeObj.WriteMem32(0x00256f90,0x3f400000)
--eeObj.WriteMem32(0x0016f9a4,0x3c023f19)
--eeObj.WriteMem32(0x0016f9a8,0x3442999a)

--Text Box Fix
--eeObj.WriteMem32(0x0031C390,0x3f800000)
--eeObj.WriteMem32(0x0031C470,0x3f800000)
--2031C390
end

emuObj.AddVsyncHook(widescreen)