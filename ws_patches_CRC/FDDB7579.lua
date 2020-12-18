apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=David Beckham Soccer (E)(SLES-50243)
--comment=Widescreen Hack by Arapapa

--Widescreen hack 16:9

eeObj.WriteMem32(0x00070028,0x00100008)

eeObj.WriteMem32(0x001cb7a8,0x0807fd68)
eeObj.WriteMem32(0x001ff5a0,0x3c013f40)
eeObj.WriteMem32(0x001ff5a4,0x4481f000)
eeObj.WriteMem32(0x001ff5a8,0xe7be0040)
eeObj.WriteMem32(0x001ff5ac,0x08072deb)
eeObj.WriteMem32(0x001cb8f0,0x3c013f2a)
eeObj.WriteMem32(0x001cd3d4,0x3c013f2a)
end

emuObj.AddVsyncHook(widescreen)