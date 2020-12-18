apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Dark Chronicle (J) (SCPS_15033)
--comment=Widescreen hack by ElHecht (pnach NTSC-J by Arapapa)

-- 16:9 (803f023c d00002ae d0000426)
eeObj.WriteMem32(0x00138e28,0x3c023f40)
end

emuObj.AddVsyncHook(widescreen)