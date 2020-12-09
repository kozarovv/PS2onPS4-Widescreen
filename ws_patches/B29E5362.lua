apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Football Generation (E)(SLES-51959)
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

eeObj.WriteMem32(0x0017c108,0x3c013f20)
eeObj.WriteMem32(0x0017c128,0x3c013f10)
end

emuObj.AddVsyncHook(widescreen)