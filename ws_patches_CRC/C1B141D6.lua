apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=25 to Life  (U)(SLUS-21016)
--comment=Widescreen Hack by Arapapa

--Widescreen hack 16:9

--X-Fov
--00000000 00000000 43030d46
eeObj.WriteMem32(0x00417e68,0x080978f8)

eeObj.WriteMem32(0x0025e3e0,0x3c013faa)
eeObj.WriteMem32(0x0025e3e4,0x3421aaab)
eeObj.WriteMem32(0x0025e3e8,0x4481f000)
eeObj.WriteMem32(0x0025e3ec,0x461e6b42)
eeObj.WriteMem32(0x0025e3f0,0x08105f9b)

--Render fix
--003f013c 00008144 6a00023c (1st)
eeObj.WriteMem32(0x003989b8,0x3c013f10)

--60 FPS by asasega
--020000000000000040020000000000002206813F
eeObj.WriteMem32(0x007067D8,0x00000001)
end

emuObj.AddVsyncHook(widescreen)