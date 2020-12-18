apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by sergx12 / ElHecht

-- 16:9
eeObj.WriteMem32(0x002b5890,0x3c013fe3)
eeObj.WriteMem32(0x002b5894,0x34218e39)
eeObj.WriteMem32(0x0011cef4,0x461e0003)

eeObj.WriteMem32(0x0039d4e4,0x08143f8f)
eeObj.WriteMem32(0x0050fe3c,0x3c013f40)
eeObj.WriteMem32(0x0050fe40,0x4481f000)
eeObj.WriteMem32(0x0050fe44,0x17610002)
eeObj.WriteMem32(0x0050fe48,0x00000000)
eeObj.WriteMem32(0x0050fe4c,0x461e1083)
eeObj.WriteMem32(0x0050fe50,0x00000000)
eeObj.WriteMem32(0x0050fe54,0x080e753a)

eeObj.WriteMem32(0x001a1980,0x08143f89)
eeObj.WriteMem32(0x001a1984,0x00000000)
eeObj.WriteMem32(0x0050fe24,0x461e0003)
eeObj.WriteMem32(0x0050fe28,0xe7a00000)
eeObj.WriteMem32(0x0050fe30,0x4600a502)
eeObj.WriteMem32(0x0050fe34,0x08068661)

eeObj.WriteMem32(0x0013604c,0x08143f4b)
eeObj.WriteMem32(0x00136050,0x00000000)
eeObj.WriteMem32(0x0050fd2c,0x8c42b11c)
eeObj.WriteMem32(0x0050fd30,0x8c644408)
eeObj.WriteMem32(0x0050fd34,0x461ef783)
eeObj.WriteMem32(0x0050fd38,0x3c1b3f40)
eeObj.WriteMem32(0x0050fd3c,0x0804d814)

eeObj.WriteMem32(0x00140688,0x08143f51)
eeObj.WriteMem32(0x0014068c,0x00000000)
eeObj.WriteMem32(0x0050fd44,0x3c020043)
eeObj.WriteMem32(0x0050fd48,0x8c444408)
eeObj.WriteMem32(0x0050fd4c,0x461ef783)
eeObj.WriteMem32(0x0050fd50,0x080501a3)

eeObj.WriteMem32(0x001347bc,0x08143f56)
eeObj.WriteMem32(0x001347c0,0x00000000)
eeObj.WriteMem32(0x0050fd58,0x3c020043)
eeObj.WriteMem32(0x0050fd5c,0x8c444408)
eeObj.WriteMem32(0x0050fd60,0x461ef783)
eeObj.WriteMem32(0x0050fd64,0x3c1b3f80)
eeObj.WriteMem32(0x0050fd68,0x0804d1f0)

eeObj.WriteMem32(0x0011e8b4,0x461ef783)
end

emuObj.AddVsyncHook(widescreen)