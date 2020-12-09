apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Clock Tower 3 - Widescreen Hack (16:9) (PAL-E) -- strider3871

--gameplay by hyakki
eeObj.WriteMem32(0x0193C0A8,0x3F1FBE77)

--FMV's fix by nemesis2000
eeObj.WriteMem32(0x018bddb8,0x3c026fa0)
eeObj.WriteMem32(0x018bde08,0x34028260)

eeObj.WriteMem32(0x018bd788,0x3c026fa0)
eeObj.WriteMem32(0x018bd7d4,0x34028260)

--black borders fix by nemesis2000
eeObj.WriteMem32(0x018f4824,0x3c030000)

--remove black square near Panic Meter
eeObj.WriteMem32(0x0041C100,0x00000000)
end

emuObj.AddVsyncHook(widescreen)