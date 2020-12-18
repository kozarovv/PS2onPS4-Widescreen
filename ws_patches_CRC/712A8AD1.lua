apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by ElHecht (NTSC-J by Arapapa)

-- Widescreen Hack (16:9)

eeObj.WriteMem32(0x00138e28,0x3c023f40)
end

emuObj.AddVsyncHook(widescreen)