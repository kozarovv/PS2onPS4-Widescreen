apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Cartoon Network Racing (E)(SLES-54306)
--comment=Widescreen Hack by Arapapa

--Widescreen hack 16:9

--Zoom
eeObj.WriteMem32(0x0033f014,0x3c013f17)

--Y-Fov
--83100046 4c00023c
eeObj.WriteMem32(0x0033f060,0x0808fc98)

eeObj.WriteMem32(0x0023f260,0x46001083)
eeObj.WriteMem32(0x0023f264,0x3c013faa)
eeObj.WriteMem32(0x0023f268,0x3421aaab)
eeObj.WriteMem32(0x0023f26c,0x4481f000)
eeObj.WriteMem32(0x0023f270,0x461e1082)
eeObj.WriteMem32(0x0023f274,0x080cfc19)
end

emuObj.AddVsyncHook(widescreen)