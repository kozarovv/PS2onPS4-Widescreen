apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=TT Superbikes: Real Road Racing Championship [PAL-M5] (SLES_546.11)
--comment=Widescreen hack by El_Patas

-- Gameplay 16:9 
eeObj.WriteMem32(0x005853D8,0x3F400000)

-- Render Fix
eeObj.WriteMem32(0x00161DC8,0x3C013F40)
eeObj.WriteMem32(0x0016281C,0x3C013F40)

eeObj.WriteMem32(0x00161D8C,0x3C013F40)
eeObj.WriteMem32(0x00161DD8,0x3C013F40)
end

emuObj.AddVsyncHook(widescreen)