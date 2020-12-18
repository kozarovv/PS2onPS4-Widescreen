apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Armored Core 3 (NTSC-K) (SLPM_67524)
--comment=Widescreen hack by ElHecht (NTSC-K by Arapapa)

-- 16:9
eeObj.WriteMem32(0x002e6dfc,0x3c013f40)
eeObj.WriteMem32(0x002e6e08,0x44810000)
eeObj.WriteMem32(0x002e6e0c,0x4600c602)
eeObj.WriteMem32(0x0026c96c,0x3c0143d6)
end

emuObj.AddVsyncHook(widescreen)