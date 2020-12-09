apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
eeObj.WriteMem32(0x0033f7ac,0x08041b98)

eeObj.WriteMem32(0x00106e60,0x46070202)
eeObj.WriteMem32(0x00106e64,0x3c013f40)
eeObj.WriteMem32(0x00106e68,0x4481f000)
eeObj.WriteMem32(0x00106e6c,0x461e4202)
eeObj.WriteMem32(0x00106e70,0x080cfdec)
end

emuObj.AddVsyncHook(widescreen)