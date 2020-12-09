apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=TT Superbikes: Real Road Racing [PAL-M5] (SLES_519.80)
--comment=Widescreen hack by El_Patas

-- Gameplay 16:9
eeObj.WriteMem32(0x005F9B58,0x3F400000)

-- Render Fix
eeObj.WriteMem32(0x00159440,0x3C013F40)
eeObj.WriteMem32(0x00159E94,0x3C013F40)

eeObj.WriteMem32(0x00159404,0x3C013F40)
eeObj.WriteMem32(0x00159450,0x3C013F40)
end

emuObj.AddVsyncHook(widescreen)