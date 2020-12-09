apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by Arapapa and FlatOut

--Gameplay 16:9

--Render Fix
--003f013c 00a88144 86650046
eeObj.WriteMem32(0x001c40f4,0x3c013f30)

--Zoom
--003f013c 00a88144 06650046
--eeObj.WriteMem32(0x001c58c4,0x3c013f6a)
--abaaaa3e 8988083e
eeObj.WriteMem32(0x00277e30,0x3FD66666)

--Y-Fov
--aa3f013c abaa2134 00b88144
eeObj.WriteMem32(0x001c4138,0x3c013fe3)
eeObj.WriteMem32(0x001c413c,0x34218e3f)
end

emuObj.AddVsyncHook(widescreen)