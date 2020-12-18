apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

eeObj.WriteMem32(0x00222404,0x3c013f40)
eeObj.WriteMem32(0x00222408,0x44810000)
eeObj.WriteMem32(0x00222410,0x4600c602)

--Render fix
eeObj.WriteMem32(0x001ebd3c,0x3c033fab)
eeObj.WriteMem32(0x001ebe00,0x3c033fab)

----------

--Zoom
--eeObj.WriteMem32(0x00173760,0x3c043ec0)
--eeObj.WriteMem32(0x002a7f94,0x40500000)
end

emuObj.AddVsyncHook(widescreen)