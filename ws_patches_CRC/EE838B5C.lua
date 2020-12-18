apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Boku to Mao (J) (PBPX-95201)
--comment=Widescreen hack by Arapapa

-- 16:9 (0000803f d7a3f03e 00004844)
eeObj.WriteMem32(0x001F99E4,0x3f400000)
end

emuObj.AddVsyncHook(widescreen)