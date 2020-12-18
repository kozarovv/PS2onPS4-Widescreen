apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Ben 10: Alien Force [NTSC-U] (SLUS_218.15)
--comment=Widescreen Hack by Sergx12

--Gameplay 16:9
eeObj.WriteMem32(0x002A2430,0x3C013F1C)
eeObj.WriteMem32(0x001124E4,0x3C013ED6)
end

emuObj.AddVsyncHook(widescreen)