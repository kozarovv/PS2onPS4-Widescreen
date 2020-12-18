apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Kelly Slater's Pro Surfer [NTSC-U] (SLUS_203.34)
--comment=Widescreen hack by Sergx12

--Gameplay 16:9
eeObj.WriteMem32(0x0029F198,0x3C01435F)
eeObj.WriteMem32(0x004AC024,0x3FE38E39)
end

emuObj.AddVsyncHook(widescreen)