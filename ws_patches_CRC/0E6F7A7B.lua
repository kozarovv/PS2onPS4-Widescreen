apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack by nemesis2000 and hyakki (NTSC-K by Arapapa)

--gameplay by hyakki
eeObj.WriteMem32(0x01939da8,0x3f1fbe77)

--FMV's fix by nemesis2000
eeObj.WriteMem32(0x018bd668,0x3c026fa0)
eeObj.WriteMem32(0x018bd6b8,0x34028260)

eeObj.WriteMem32(0x018bcf38,0x3c026fa0)
eeObj.WriteMem32(0x018bcf84,0x34028260)

--black borders fix by nemesis2000
eeObj.WriteMem32(0x018f3824,0x3c030000)

--remove black square near Panic Meter
eeObj.WriteMem32(0x0041C240,0x00000000)
end

emuObj.AddVsyncHook(widescreen)