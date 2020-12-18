apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Killer 7 (J) (SLPM_659.47)
--comment=Widescreen hack by ElHecht (NTSC-J by  Arapapa)

-- 16:9
eeObj.WriteMem32(0x0027c090,0x3c023fe3)
eeObj.WriteMem32(0x0027c094,0x34428e38)
end

emuObj.AddVsyncHook(widescreen)