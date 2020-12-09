apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Gladiator - Sword of Vengeance NTSC-U
--comment=Widescreen hack
eeObj.WriteMem32(0x001c6240,0x3c013f40)
eeObj.WriteMem32(0x0020dc38,0x3c013fab)
eeObj.WriteMem32(0x0028462c,0x3c010000)
eeObj.WriteMem32(0x00799D30,0xbfab0000)
end

emuObj.AddVsyncHook(widescreen)