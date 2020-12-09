apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack by Arapapa

--Widescreen hack 16:9

--Fov
--a03f013c 00688144 e4310b0c
eeObj.WriteMem32(0x002cb550,0x3c013fd5)

--Zoom
--003f013c 00088144 0000bfdf
eeObj.WriteMem32(0x0037f0d8,0x3c013ec0)
end

emuObj.AddVsyncHook(widescreen)