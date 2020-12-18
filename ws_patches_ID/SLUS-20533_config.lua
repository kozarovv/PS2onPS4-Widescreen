apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Shox (U)(SLUS-20533)
--comment=Widescreen Hack by Arapapa

--Widescreen hack 16:9

--X-Fov
eeObj.WriteMem32(0x00206414,0x3c013fe3)
eeObj.WriteMem32(0x00206418,0x34218e2a)
end

emuObj.AddVsyncHook(widescreen)