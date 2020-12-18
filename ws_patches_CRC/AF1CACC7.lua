apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=X-Men - Next Dimension (E)(SLES-50898)
--comment=Widescreen hack (Pal by Arapapa)

--Widescreen hack 16:9

eeObj.WriteMem32(0x001a5bfc,0x3c014455)
eeObj.WriteMem32(0x001a5c18,0x3c013fe3)
eeObj.WriteMem32(0x001a5c1c,0x34218e38)
eeObj.WriteMem32(0x0019dc0c,0x3c013f22)


end

emuObj.AddVsyncHook(widescreen)