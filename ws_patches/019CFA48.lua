apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by Arapapa & El_Patas

--Gameplay 16:9

--Zoom
eeObj.WriteMem32(0x00223c0c,0x3c013f40)

--Y-FOV
eeObj.WriteMem32(0x0012449c,0x3c013fab)
eeObj.WriteMem32(0x001244a0,0x44810000)
eeObj.WriteMem32(0x001244a4,0x4600a502)
eeObj.WriteMem32(0x001244a8,0x4614a803)

--Load Image
eeObj.WriteMem32(0x0020c7b0,0x3c033f40)

--Size text and map
eeObj.WriteMem32(0x0020c7cc,0x3c033f40)

--Render fix
eeObj.WriteMem32(0x001d52b4,0x3c023fc0)
end

emuObj.AddVsyncHook(widescreen)