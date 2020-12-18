apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Metal Gear Solid 3 - Subsistence (K) (SLKA_25353)
--comment=Widescreen pnach by Arapapa

-- 16:9 (0000803f 000080bf cdcc4c3d)
eeObj.WriteMem32(0x002050AC,0x3F400000)
end

emuObj.AddVsyncHook(widescreen)