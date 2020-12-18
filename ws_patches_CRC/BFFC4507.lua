apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Detective Conan - Inheritance of Britain (NTSC-J)(SLPS-25426)
--comment=Widescreen Hack by Arapapa

--Play Tip
--Effects of shadow are dirty.Then it is better to turn off a shadow's effects.
--GSDX -> pluging settings -> configure -> CHECK a "Alpha" (get rid of shadow's effects)

--Widescreen hack 16:9
--00000000 00000000 43ad1346 00000000
eeObj.WriteMem32(0x0022be64,0x3c013f40)
eeObj.WriteMem32(0x0022be68,0x44810000)
eeObj.WriteMem32(0x0022be70,0x4600c602)

--Render fix
--0000a043 00006043 00008041 ffff7f4b 00000000
eeObj.WriteMem32(0x002d7e90,0x43e00000)

--0000a043 00006043 00000000 04000000 0a000000
eeObj.WriteMem32(0x002fccac,0x43e00000)
end

emuObj.AddVsyncHook(widescreen)