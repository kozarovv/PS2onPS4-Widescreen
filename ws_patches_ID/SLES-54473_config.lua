apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=The Flintstones - Bedrock Racing (E)(SLES-54473)
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

--Zoom
--003f013c 00008144 3800b7e7
eeObj.WriteMem32(0x00180684,0x3c013f21)

--Y-Fov
--c2051546 2d200002
eeObj.WriteMem32(0x001806d4,0x08087fb8)

eeObj.WriteMem32(0x0021fee0,0x461505c2)
eeObj.WriteMem32(0x0021fee4,0x3c013f40)
eeObj.WriteMem32(0x0021fee8,0x00000000)
eeObj.WriteMem32(0x0021feec,0x4481f000)
eeObj.WriteMem32(0x0021fef0,0x461ebdc2)
eeObj.WriteMem32(0x0021fef4,0x080601b6)
end

emuObj.AddVsyncHook(widescreen)