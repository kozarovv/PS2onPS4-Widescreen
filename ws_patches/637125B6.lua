apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack by Arapapa

--Widescreen hack 16:9

--Y-Fov
--803f023c 00a88244 04000010
eeObj.WriteMem32(0x00135320,0x3c023fab)

--Y-Fov
--eeObj.WriteMem32(0x001352f8,0x3c013fab)
--eeObj.WriteMem32(0x001352fc,0x4481f800)
--eeObj.WriteMem32(0x00135300,0x00000000)
--eeObj.WriteMem32(0x00135304,0x461f3182)

--Zoom
--003f023c 00088244 28868070
eeObj.WriteMem32(0x001352b8,0x3c023f24)
--eeObj.WriteMem32(0x00135348,0x3c043ec0)
end

emuObj.AddVsyncHook(widescreen)