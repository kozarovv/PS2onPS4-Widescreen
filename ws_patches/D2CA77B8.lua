apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Black & Bruised (U)(SLUS-20506)
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

--X-Fov
--003f023c 00008244 00000000 02000146 (1st)
eeObj.WriteMem32(0x001118b8,0x3c023ec0)
end

emuObj.AddVsyncHook(widescreen)