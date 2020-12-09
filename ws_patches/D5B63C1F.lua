apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=.hackG.U. Vol. 1 (J) (SLPS_256.51)
--comment=Widescreen Hack (16:9)  (cloudalmasai) (pnach by Arapapa)

--16:9 (0000803f 0000803f 00008043 00004043)
eeObj.WriteMem32(0x0094D414,0x3F400000)
end

emuObj.AddVsyncHook(widescreen)