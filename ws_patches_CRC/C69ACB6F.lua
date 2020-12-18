apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Metal Gear Solid 3 - Snake Eater (K) (SLKA_25251)
--comment=Widescreen pnach by Arapapa

-- 16:9 (0000803f 000080bf cdcc4c3d)
eeObj.WriteMem32(0x002025B4,0x3F400000)
end

emuObj.AddVsyncHook(widescreen)