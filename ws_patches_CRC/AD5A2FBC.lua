apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=International League Soccer (E)(SLES-50231)
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

eeObj.WriteMem32(0x0010856c,0x3c013f40)
end

emuObj.AddVsyncHook(widescreen)