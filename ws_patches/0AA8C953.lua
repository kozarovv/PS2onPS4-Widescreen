apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by El_Patas
 
--Gameplay 16:9
eeObj.WriteMem32(0x00137D7C,0x3C013F40)
eeObj.WriteMem32(0x0017509C,0x3C013F40)
eeObj.WriteMem32(0x00188838,0x3C013F40)
eeObj.WriteMem32(0x00187EC4,0x3C013F40)
eeObj.WriteMem32(0x001870D4,0x3C013F40)
eeObj.WriteMem32(0x00187C9C,0x3C013F40)
eeObj.WriteMem32(0x00187718,0x3C013F40)
end

emuObj.AddVsyncHook(widescreen)