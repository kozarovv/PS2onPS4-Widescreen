apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Clock Tower 3 (SLUS-20633)

--gameplay by hyakki
eeObj.WriteMem32(0x01939d28,0x3f1fbe77)

--FMV's fix by nemesis2000
eeObj.WriteMem32(0x018bd568,0x3c026fa0)
eeObj.WriteMem32(0x018bd5b8,0x34028260)

eeObj.WriteMem32(0x018bcf38,0x3c026fa0)
eeObj.WriteMem32(0x018bcf84,0x34028260)

--black borders fix by nemesis2000
eeObj.WriteMem32(0x018f37e4,0x3c030000)

--remove black square near Panic Meter
eeObj.WriteMem32(0x0041C240,0x00000000)

--remove Panic Meter
--eeObj.WriteMem32(0x00417F80,0x00000000)
--eeObj.WriteMem32(0x0041A53C,0x00000000)
--eeObj.WriteMem32(0x0041A880,0x00000000)
--eeObj.WriteMem32(0x0041A8BC,0x00000000)
--eeObj.WriteMem32(0x00419E00,0x00000000)
--eeObj.WriteMem32(0x00419E24,0x00000000)
end

emuObj.AddVsyncHook(widescreen)