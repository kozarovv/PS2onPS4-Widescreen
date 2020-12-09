apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Kingdom Hearts (PAL)
--comment=Widescreen patch
eeObj.WriteMem32(0x001105e4,0x3c0143d6)
eeObj.WriteMem32(0x00110ad0,0x3c013f19)
eeObj.WriteMem32(0x00110ad4,0x3421999a)

--FMV's fix
eeObj.WriteMem32(0x002a1308,0x70007000)
eeObj.WriteMem32(0x0010629c,0x3c071900)

--black border fix
eeObj.WriteMem32(0x0010430c,0x00000000)
eeObj.WriteMem32(0x0010442c,0x00000000)

--60 FPS
--eeObj.WriteMem32(0x002B67CC,0x00000000)
end

emuObj.AddVsyncHook(widescreen)