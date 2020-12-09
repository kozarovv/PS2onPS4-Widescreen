apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack by Arapapa

--16:9 (0000803f 0000803f 00008043)

eeObj.WriteMem32(0x0008fb80,0x00100128)
eeObj.WriteMem32(0x008ef530,0x3f400000)
eeObj.WriteMem32(0x002639e4,0x3c023f40)
eeObj.WriteMem32(0x00263a34,0x3c023f40)
eeObj.WriteMem32(0x00263b7c,0x3c023f40)
eeObj.WriteMem32(0x00263cc4,0x3c023f40)
eeObj.WriteMem32(0x002652a0,0x3c023f40)
eeObj.WriteMem32(0x002652ec,0x3c023f40)
eeObj.WriteMem32(0x0026542c,0x3c023f40)

eeObj.WriteMem32(0x00084c80,0x00100128)
eeObj.WriteMem32(0x008f4630,0x3f400000)
eeObj.WriteMem32(0x002639e4,0x3c023f40)
eeObj.WriteMem32(0x00263a34,0x3c023f40)
eeObj.WriteMem32(0x00263b7c,0x3c023f40)
eeObj.WriteMem32(0x00263cc4,0x3c023f40)
eeObj.WriteMem32(0x002652a0,0x3c023f40)
eeObj.WriteMem32(0x002652ec,0x3c023f40)
eeObj.WriteMem32(0x0026542c,0x3c023f40)

--3D Animation Scene
--803f023c 90023026 00608244
--803f023c 40033026 00608244
--803f023c f0033026 00608244
--803f023c a0043026 00608244
--803f023c 2d206002 00608244 (3times from bottom)

--X-Fov (ALL of Screen 3D + 2D)
--eeObj.WriteMem32(0x000e0055,0x0010011c)
--eeObj.WriteMem32(0x001069c4,0x08030000)
--eeObj.WriteMem32(0x000c0004,0x3c023faa)
--eeObj.WriteMem32(0x000c0008,0x3442aaab)
--eeObj.WriteMem32(0x000c000c,0x3c013faa)
--eeObj.WriteMem32(0x000c0010,0x3421aaab)
--eeObj.WriteMem32(0x000c0014,0x4481f000)
--eeObj.WriteMem32(0x000c0018,0x461ec602)
--eeObj.WriteMem32(0x000c001c,0xe6180154)
--eeObj.WriteMem32(0x000c0020,0x08041a73)
--eeObj.WriteMem32(0x00106690,0x3c023f40)
--eeObj.WriteMem32(0x001066ac,0x0803000c)
--eeObj.WriteMem32(0x000c0030,0x3c013f80)
--eeObj.WriteMem32(0x000c0034,0x44816800)
--eeObj.WriteMem32(0x000c0038,0x080419ac)

--2D CH Zoom
--eeObj.WriteMem32(0x00305148,0x3c033faa)
end

emuObj.AddVsyncHook(widescreen)