apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Hresvelgr - Formula Highpowered (J) (SLPS-20024)
--comment=Widescreen hack by Arapapa

-- 16:9 (00000000 00000000 43ad1346 00000000)
eeObj.WriteMem32(0x002810b4,0x3c013f40)
eeObj.WriteMem32(0x002810b8,0x44810000)
eeObj.WriteMem32(0x002810c0,0x4600c602)
end

emuObj.AddVsyncHook(widescreen)