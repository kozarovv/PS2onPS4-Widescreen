apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=DragonBall Z - Budokai Tenkaichi (PAL-M6) (SLES-53200)
--comment=Widescreen hack by sergx12/ElHecht

-- 16:9 menu
eeObj.WriteMem32(0x0020b2d4,0x3F600000)
eeObj.WriteMem32(0x0011e430,0x3c013f40)
eeObj.WriteMem32(0x0011e460,0x3c01442b)
eeObj.WriteMem32(0x0011e4e8,0x3c013f40)
eeObj.WriteMem32(0x0011e500,0x3c01442b)
eeObj.WriteMem32(0x0011e550,0x3c013f40)
eeObj.WriteMem32(0x0011e564,0x3c01442b)
eeObj.WriteMem32(0x0010f520,0x3c013f40)
eeObj.WriteMem32(0x0010f548,0x3c01442b)

-- 16:9 gameplay
eeObj.WriteMem32(0x00083f80,0x0023bea0)
eeObj.WriteMem32(0x0023bea0,0x3c013f40)
eeObj.WriteMem32(0x0023bed0,0x3c01442b)
eeObj.WriteMem32(0x0023c81c,0x3c013f40)
eeObj.WriteMem32(0x0023c864,0x3c01442b)
eeObj.WriteMem32(0x0023c958,0x3c013f40)
eeObj.WriteMem32(0x0023c970,0x3c01442b)
eeObj.WriteMem32(0x0023c9d0,0x3c013f40)
eeObj.WriteMem32(0x0023c9e4,0x3c01442b)
end

emuObj.AddVsyncHook(widescreen)