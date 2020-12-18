apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack by Arapapa/Elhecht

-- 16:9 gameplay
eeObj.WriteMem32(0x0021b0e8,0x10000012)
eeObj.WriteMem32(0x0021b130,0x46000d82)
eeObj.WriteMem32(0x0021b134,0x3c023f25)
eeObj.WriteMem32(0x0021b138,0x3442aaab)

-- 16:9 menu
eeObj.WriteMem32(0x002e551c,0x0810334d)
eeObj.WriteMem32(0x002e5520,0x00000000)

eeObj.WriteMem32(0x0040cd34,0x3c01bfd3)
eeObj.WriteMem32(0x0040cd38,0x34213333)
eeObj.WriteMem32(0x0040cd3c,0xafa10100)
eeObj.WriteMem32(0x0040cd40,0xafa10104)
eeObj.WriteMem32(0x0040cd48,0x080b9548)

--Black Bar Fix
--eeObj.WriteMem32(0x003ca71c,0x3c020000)
eeObj.WriteMem32(0x003ca72c,0x3c024900)

--Direction Indicator fix
--X-position
--eeObj.WriteMem32(0x00387e84,0x3c034420)
--eeObj.WriteMem32(0x00388b80,0x3c024420)
--eeObj.WriteMem32(0x00389130,0x3c034420)
--eeObj.WriteMem32(0x003893a0,0x3c034420)

--Y-Position
--eeObj.WriteMem32(0x00387e9c,0x3c024208)
--eeObj.WriteMem32(0x00388b90,0x3c024208)
--eeObj.WriteMem32(0x00389134,0x3c024208)
--eeObj.WriteMem32(0x003893a4,0x3c024208)
end

emuObj.AddVsyncHook(widescreen)