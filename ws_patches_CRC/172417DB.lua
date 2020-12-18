apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Patch (16:9) by Monsterjamp

--FOV
eeObj.WriteMem32(0x00CC5540,0x3FE374BC)

--HUD Scaling
eeObj.WriteMem32(0x00CC5544,0x3F666666)
eeObj.WriteMem32(0x00CC5548,0x3F866666)
eeObj.WriteMem32(0x00CC554C,0x3F8374BC)

--Increases Draw Distance (Needed to restore effects lost in HW mode)
eeObj.WriteMem32(0x00CC5558,0x3FC00000)
end

emuObj.AddVsyncHook(widescreen)