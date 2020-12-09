apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=.hack 2 - Mutation (K) (SLKA-25138)
--comment=Widescreen Hack (16:9)  (Hyakki) (pnach by Arapapa)

--16:9 (0000803f 0000803f 00008043 00004043)
eeObj.WriteMem32(0x00a67920,0x3F400000)
end

emuObj.AddVsyncHook(widescreen)