apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=dot Hack - Part 1 - Infection (K) (SLKA_250.80)
--comment=Widescreen Hack (16:9)  (Hyakki) (pnach by Arapapa)

--16:9 (0000803f 0000803f 00008043 00004043)
eeObj.WriteMem32(0x00A61720,0x3F400000)
end

emuObj.AddVsyncHook(widescreen)