apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Alias (NTSC-U)
--comment=Widescreen Hack by Arapapa

-- 16:9
eeObj.WriteMem32(0x00248178,0x3c013ec0)
eeObj.WriteMem32(0x001f3c30,0x3c013f40)
end

emuObj.AddVsyncHook(widescreen)