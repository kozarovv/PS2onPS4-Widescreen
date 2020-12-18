apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hacks by Aced14

--16:9 Widescreen
eeObj.WriteMem32(0x004EDDCC,0x08147263)
eeObj.WriteMem32(0x0051C98C,0x3C013F40)
eeObj.WriteMem32(0x0051C990,0x4481F800)
eeObj.WriteMem32(0x0051C994,0x461F07C2)
eeObj.WriteMem32(0x0051C998,0x0813B775)
eeObj.WriteMem32(0x0051C99C,0xE61F0120)

--eeObj.WriteMem32(0x00551334,0x00000355)
end

emuObj.AddVsyncHook(widescreen)