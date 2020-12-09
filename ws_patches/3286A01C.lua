apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack by Arapapa

--Widescreen hack 16:9

--Zoom
--003f013c 00608144 (4th)
eeObj.WriteMem32(0x00315a74,0x3c013f21)

--Y-Fov
--00000000 00000000 43ad1346 00000000
--403f013c 00008144 43ad1346 c3bd0046
eeObj.WriteMem32(0x00378b24,0x3c013f40)
eeObj.WriteMem32(0x00378b28,0x44810000)
eeObj.WriteMem32(0x00378b30,0x4600bdc3)

end

emuObj.AddVsyncHook(widescreen)