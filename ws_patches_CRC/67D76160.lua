apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack by Arapapa and Red_Tv

--fields and battles
eeObj.WriteMem32(0x003aca64,0x3fc65461)

--event
eeObj.WriteMem32(0x003ace14,0x3fc65461)

--black borders's fix (optional)
--eeObj.WriteMem32(0x001068CC,0x2404FF00)
--eeObj.WriteMem32(0x001C8EF8,0x24040000)
--eeObj.WriteMem32(0x00114310,0x24040000)
--eeObj.WriteMem32(0x00106AD8,0xa3809b13)

--progressive scan by Red_Tv
eeObj.WriteMem32(0x003575a8,0x00000000)
eeObj.WriteMem32(0x00376c4c,0x24110000)
eeObj.WriteMem32(0x00376c50,0x24120050)
eeObj.WriteMem32(0x00376c54,0x24020001)
eeObj.WriteMem32(0x0035b4d8,0x00000000)

--60 FPS by Red_Tv
eeObj.WriteMem32(0x0011b560,0x10000006)
end

emuObj.AddVsyncHook(widescreen)