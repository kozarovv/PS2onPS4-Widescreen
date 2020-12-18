apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Bouken-Ou Beet - Darkness Century (J) (SLPS-25470)
--comment=Widescreen hack by Arapapa

-- 16:9 (0000803f 0000803f 0f070600)
eeObj.WriteMem32(0x002C11C0,0x3f400000)

-- 16:9 (a little zoom out)
--eeObj.WriteMem32(0x002C11C0,0x3f100000)
--eeObj.WriteMem32(0x002C11C4,0x3f400000)
end

emuObj.AddVsyncHook(widescreen)