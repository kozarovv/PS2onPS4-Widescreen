apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack (NTSC-J by Arapapa)

--Widescreen hack 16:9
eeObj.WriteMem32(0x0012ae90,0x3c013f40)
end

emuObj.AddVsyncHook(widescreen)