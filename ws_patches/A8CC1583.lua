apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Sly Cooper 3 - Honour Among Thieves (K)(SCKA-20063)
--comment=Widescreen Hack (NTSC-K by Arapapa)

--X-Fov 16:9
eeObj.WriteMem32(0x00166bec,0x3c014455)


end

emuObj.AddVsyncHook(widescreen)