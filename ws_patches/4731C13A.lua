apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by Elhecht

-- 16:9
eeObj.WriteMem32(0x00163cd4,0x080d26a7)
eeObj.WriteMem32(0x00163cd8,0x00000000)
eeObj.WriteMem32(0x00349a9c,0x3c013f40)
eeObj.WriteMem32(0x00349aa0,0x34210000)
eeObj.WriteMem32(0x00349aa4,0x4481f000)
eeObj.WriteMem32(0x00349aa8,0x461ece43)
eeObj.WriteMem32(0x00349aac,0x4600a802)
eeObj.WriteMem32(0x00349ab0,0x461e0003)
eeObj.WriteMem32(0x00349ab4,0x3c013f80)
eeObj.WriteMem32(0x00349ab8,0x08058f36)

-- renderfix
eeObj.WriteMem32(0x0021e384,0x080d26b0)
eeObj.WriteMem32(0x0021e388,0x00000000)
eeObj.WriteMem32(0x00349acc,0x461e6303)
eeObj.WriteMem32(0x00349ad0,0x46006302)
eeObj.WriteMem32(0x00349ad4,0x7fb10110)
eeObj.WriteMem32(0x00349ad8,0x080878e2)
end

emuObj.AddVsyncHook(widescreen)