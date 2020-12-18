apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

--cdcc8c3f 0000803f 02020003
eeObj.WriteMem32(0x002638F4,0x3F533333)


end

emuObj.AddVsyncHook(widescreen)