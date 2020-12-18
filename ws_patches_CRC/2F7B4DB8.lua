apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hacks by Aced14 (MIPS code injection/FMV experiment) and 2007excalibur2007 (initial live memory discovery)

--16:9 Widescreen
eeObj.WriteMem32(0x00FF0000,0x001001E0)
eeObj.WriteMem32(0x00221A88,0x080A2564)
eeObj.WriteMem32(0x00289590,0x3C013F40)
eeObj.WriteMem32(0x00289594,0x4481F800)
eeObj.WriteMem32(0x00289598,0x461F07C2)
eeObj.WriteMem32(0x0028959C,0x080886A4)
eeObj.WriteMem32(0x002895A0,0xE61F0160)

--eeObj.WriteMem32(0x001AEE0C,0x00000355)
end

emuObj.AddVsyncHook(widescreen)