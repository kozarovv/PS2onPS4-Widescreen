apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Formula One 2002 (E)(SCES-51004)
--comment=Widescreen Hack by Arapapa

--Widescreen hack 16:9

--Zoom
eeObj.WriteMem32(0x003bd6ac,0x40100000)
eeObj.WriteMem32(0x0012f888,0x3c01409a)

--Y-Fov
eeObj.WriteMem32(0x0012f7f8,0x3c013fb6)
eeObj.WriteMem32(0x0012f7fc,0x34210b5f)
end

emuObj.AddVsyncHook(widescreen)