apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

--X-Fov
--0040013c 00088144 03000146 a00040e4
eeObj.WriteMem32(0x00350458,0x3c01402a)
end

emuObj.AddVsyncHook(widescreen)