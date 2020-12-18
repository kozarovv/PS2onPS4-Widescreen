apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Scooby-Doo! Unmasked (U)(SLUS-21091) and (E)(SLES-53100)
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

--Zoom
--0040023c 00008244 3800a2c7
eeObj.WriteMem32(0x001daf68,0x3c023fc0)

--Y-Fov
--02100046 0800a0ac
eeObj.WriteMem32(0x0023af14,0x08030000)

eeObj.WriteMem32(0x000c0000,0x46001002)
eeObj.WriteMem32(0x000c0004,0x3c013faa)
eeObj.WriteMem32(0x000c0008,0x3421aaab)
eeObj.WriteMem32(0x000c000c,0x4481f000)
eeObj.WriteMem32(0x000c0010,0x461e0002)
eeObj.WriteMem32(0x000c0014,0x0808ebc6)
end

emuObj.AddVsyncHook(widescreen)