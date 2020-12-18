apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by paul_met (NTSC-J by Arapapa)

--Widescreen hack 16:9

--aa3f013c abaa2134 00008144
eeObj.WriteMem32(0x00114cb8,0x3c013fe3)
end

emuObj.AddVsyncHook(widescreen)