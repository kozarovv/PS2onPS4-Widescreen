apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=The Nightmare of Druaga - Fushigi no Dungeon (J)(SLPS-25377)
--comment=Widescreen hack (NTSC-J by Arapapa)

--Widescreen hack 16:9

--X-Fov
eeObj.WriteMem32(0x00432f1c,0x3c023f06)
eeObj.WriteMem32(0x00432fb0,0x34436666)


------------------------------------------------/
--Y-Fov
--eeObj.WriteMem32(0x00432dec,0x8f838da0)
--eeObj.WriteMem32(0x00432df0,0x3c02bfaa)
--eeObj.WriteMem32(0x00432df4,0x3442aaab)

--Zoom
--eeObj.WriteMem32(0x00432e18,0x3c023ec0)
end

emuObj.AddVsyncHook(widescreen)