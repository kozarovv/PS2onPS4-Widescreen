apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Spider-Man: Friend or Foe (NTSC-U)
--comment=Widescreen Hack

--Gameplay 16:9
eeObj.WriteMem32(0x003EC448,0x3FE38E38)
end

emuObj.AddVsyncHook(widescreen)