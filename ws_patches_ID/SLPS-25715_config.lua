apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Tales of Destiny (J)(SLPS-25715)
--comment=Widescreen hack by nemesis2000 (pnach by nemesis2000)

eeObj.WriteMem32(0x0015b810,0x00000000)
eeObj.WriteMem32(0x0015b818,0x3c013f40)
eeObj.WriteMem32(0x0015b81c,0x4481c800)
eeObj.WriteMem32(0x0015b824,0x46196b42)
eeObj.WriteMem32(0x0015b828,0xe7ad0040)
eeObj.WriteMem32(0x0015b384,0x3c013f20)
eeObj.WriteMem32(0x0015b388,0x34216d3a)
eeObj.WriteMem32(0x0015b88c,0x3c0143d6)

--No interlacing by asasega
eeObj.WriteMem32(0x001a3d64,0x00000000)
eeObj.WriteMem32(0x001a3dec,0x00000000)
end

emuObj.AddVsyncHook(widescreen)