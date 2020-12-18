apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack by Arapapa

--Widescreen hack 16:9

--Zoom
eeObj.WriteMem32(0x00197c14,0x3c013f21)

--Y-Fov
eeObj.WriteMem32(0x00197c64,0x0808e728)


eeObj.WriteMem32(0x00239ca0,0x461505c2)
eeObj.WriteMem32(0x00239ca4,0x3c013f40)
eeObj.WriteMem32(0x00239ca8,0x4481f000)
eeObj.WriteMem32(0x00239cac,0x461ebdc2)
eeObj.WriteMem32(0x00239cb0,0x08065f1a)
end

emuObj.AddVsyncHook(widescreen)