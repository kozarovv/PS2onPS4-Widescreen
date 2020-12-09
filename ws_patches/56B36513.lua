apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

--Zoom
--003f013c 00088144 b00644c6
eeObj.WriteMem32(0x0019d554,0x3c013ec0)

--Y-Fov
--00000000 00000000 83b50046 00000000 00000000
--aa3f013c abaa2134 83b50046 00f08144 c2bd1e46
eeObj.WriteMem32(0x0019d574,0x3c013faa)
eeObj.WriteMem32(0x0019d578,0x3421aaab)
eeObj.WriteMem32(0x0019d580,0x4481f000)
eeObj.WriteMem32(0x0019d584,0x461ebdc2)
end

emuObj.AddVsyncHook(widescreen)