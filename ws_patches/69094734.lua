apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack (16:9) by XxGaMiNGK3LLERxX

eeObj.WriteMem32(0x00D86690,0x3F666666)
eeObj.WriteMem32(0x007214D4,0x3FA00000)
eeObj.WriteMem32(0x00D86678,0x3F59999A)
eeObj.WriteMem32(0x007214CC,0x3F100000)
eeObj.WriteMem32(0x007214D0,0x3F100000)
eeObj.WriteMem32(0x007214A0,0x3FE00000)

--eeObj.WriteMem32(0x00D866B4,0x3F733333)
--eeObj.WriteMem32(0x00231920,0x3F333333)
--eeObj.WriteMem32(0x006A81EC,0x3F7AE148)

end

emuObj.AddVsyncHook(widescreen)