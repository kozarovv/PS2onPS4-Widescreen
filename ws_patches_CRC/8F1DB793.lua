apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Flipnic (E)(SLES-52065)
--comment=Widescreen hack by Arapapa

--Gameplay 16:9

eeObj.WriteMem32(0x001864ec,0x3c023f19)
eeObj.WriteMem32(0x001864f4,0x3447999a)
end

emuObj.AddVsyncHook(widescreen)