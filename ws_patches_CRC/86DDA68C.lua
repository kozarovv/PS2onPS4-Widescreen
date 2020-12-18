apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack (NTSC-K by Arapapa)

--Widescreen hack 16:9
eeObj.WriteMem32(0x002b24f0,0x3c013f40)
end

emuObj.AddVsyncHook(widescreen)