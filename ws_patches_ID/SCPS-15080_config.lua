apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Wara Ryuomiyo - Pride of the Dragon Peace (J) (SCPS-15080)
--comment=Widescreen hack by Arapapa

-- 16:9 (0000803f 0000803f 0000803f 00008047)
eeObj.WriteMem32(0x0052EAB8,0x3f400000)
end

emuObj.AddVsyncHook(widescreen)