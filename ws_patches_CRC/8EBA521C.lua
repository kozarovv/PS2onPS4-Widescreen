apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Arthur and the Invisibles: The Game [NTSC-U] (SLUS_213.05)
--comment=Widescreen hack by Sergx12

--Gameplay 16:9
eeObj.WriteMem32(0x0012BBA4,0x3C023F1E)
eeObj.WriteMem32(0x0012BBC8,0x3C023F0F)
end

emuObj.AddVsyncHook(widescreen)