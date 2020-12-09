apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack (16:9) by ElHecht Mod Pnach crc by Acem 
--comment=Font fix by Arapapa

--Widescreen hack 16:9

eeObj.WriteMem32(0x00103fa4,0x3c013f40)
eeObj.WriteMem32(0x00103fa8,0x44810000)
eeObj.WriteMem32(0x00103fb0,0x4600c602)

--Font Fix
eeObj.WriteMem32(0x0030702c,0x3c033f53)
eeObj.WriteMem32(0x00307030,0x34633333)
end

emuObj.AddVsyncHook(widescreen)