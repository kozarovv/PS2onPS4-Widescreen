apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Tales of Rebirth (NTSC-J)
--comment=Widescreen hack

--gameplay
eeObj.WriteMem32(0x0015c8e8,0x00000000)
eeObj.WriteMem32(0x0015c8f0,0x3c013f40)
eeObj.WriteMem32(0x0015c8f4,0x4481c800)
eeObj.WriteMem32(0x0015c8fc,0x46196b42)
eeObj.WriteMem32(0x0015c900,0xe7ad0040)

--sprite fix
eeObj.WriteMem32(0x001574a4,0x3c013f20)
eeObj.WriteMem32(0x001574a8,0x34216d3a)

--render fix
eeObj.WriteMem32(0x0015c964,0x3c0143d6)
end

emuObj.AddVsyncHook(widescreen)