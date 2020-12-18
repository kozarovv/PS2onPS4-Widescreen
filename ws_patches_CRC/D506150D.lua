apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=UFC: Throwdown [PAL] (SLES_509.99)
--comment=Widescreen hack by El_Patas
 
--Gameplay 16:9 
eeObj.WriteMem32(0x001A9844,0x3C013CBB)
eeObj.WriteMem32(0x001A9848,0x3421821D)
eeObj.WriteMem32(0x001A98F0,0x3C013FE3)
eeObj.WriteMem32(0x001A98F4,0x3421AE39)
end

emuObj.AddVsyncHook(widescreen)