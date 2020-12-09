apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

--803f033c 4940023c 00188344
eeObj.WriteMem32(0x0019d624,0x3c033f40)

end

emuObj.AddVsyncHook(widescreen)