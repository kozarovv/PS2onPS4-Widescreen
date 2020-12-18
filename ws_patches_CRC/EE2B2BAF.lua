apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Tony Hawk's Pro Skater 3 (NTSC-U)
--comment=Widescreen Hack

eeObj.WriteMem32(0x0017BEB8,0x3C013FF3)
eeObj.WriteMem32(0x0017BEBC,0x3421CF00)
eeObj.WriteMem32(0x001F332C,0x3C013FF3)
eeObj.WriteMem32(0x001F3330,0x3421CF00)
eeObj.WriteMem32(0x001F7D60,0x3C013FF3)
eeObj.WriteMem32(0x001F7D64,0x3421CF00)
eeObj.WriteMem32(0x001F334C,0x3C013F73)
eeObj.WriteMem32(0x001F3350,0x3421CF00)
eeObj.WriteMem32(0x001F336C,0x3C014073)
eeObj.WriteMem32(0x001F3370,0x3421CF00)
end

emuObj.AddVsyncHook(widescreen)