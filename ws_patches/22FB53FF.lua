apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

--X-fov
--403f023c 00088244 00188344
eeObj.WriteMem32(0x0027cb84,0x3c023f10)
end

emuObj.AddVsyncHook(widescreen)