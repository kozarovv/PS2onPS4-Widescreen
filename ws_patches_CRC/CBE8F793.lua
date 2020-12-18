apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=TT Superbikes: Legends [PAL-M5] (SLES_554.09)
--comment=Widescreen hack by El_Patas

-- Gameplay 16:9 
eeObj.WriteMem32(0x00583458,0x3F400000)

-- Render Fix
eeObj.WriteMem32(0x00163D40,0x3C013F40)
eeObj.WriteMem32(0x00164794,0x3C013F40)

eeObj.WriteMem32(0x00163D04,0x3C013F40)
eeObj.WriteMem32(0x00163D50,0x3C013F40)
end

emuObj.AddVsyncHook(widescreen)