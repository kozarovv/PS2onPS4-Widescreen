apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Kikou Heidan - J-Phoenix Burst Tactics (J) (SLPM_65123)
--comment=Widescreen hack by Arapapa

-- 16:9 (search 00000000 00000000 43ad1346 00000000)
eeObj.WriteMem32(0x0029a184,0x3c013f40)
eeObj.WriteMem32(0x0029a188,0x44810000)
eeObj.WriteMem32(0x0029a190,0x4600c602)
end

emuObj.AddVsyncHook(widescreen)