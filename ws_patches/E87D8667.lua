apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
1--gametitle=Bolt (U)(SLUS-21844)
--comment=Widescreen Hack by Arapapa

--Widescreen hack 16:9

/X-Fov
--43030d46 07000046 140040e4 0400a4e7
eeObj.WriteMem32(0x002d8668,0x08171b24)

eeObj.WriteMem32(0x005c6c90,0xe7a40004)
eeObj.WriteMem32(0x005c6c94,0x3c013f40)
eeObj.WriteMem32(0x005c6c98,0x4481f000)
eeObj.WriteMem32(0x005c6c9c,0x461e6b42)
eeObj.WriteMem32(0x005c6ca0,0x080b619b)

--Render fix
--003f013c 00008144 7900023c (1st)
eeObj.WriteMem32(0x004b5328,0x3c013f2b)
end

emuObj.AddVsyncHook(widescreen)