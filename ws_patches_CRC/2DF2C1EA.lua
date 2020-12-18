apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=16:9 widescreen hack

--16:9 widescreen hack by nemesis2000, porting by 99skull

eeObj.WriteMem32(0x00114C6C,0x3C013F40)
eeObj.WriteMem32(0x00114C70,0x4481C000)
eeObj.WriteMem32(0x00114C80,0x46181082)
--render fix
eeObj.WriteMem32(0x00114624,0x240302AB)
eeObj.WriteMem32(0x00549578,0x44FA0000)
--black borders fix
eeObj.WriteMem32(0x00113380,0x3C010000)

--No interlacing by asasega
eeObj.WriteMem32(0x0028D478,0x00000001)
eeObj.WriteMem32(0x0028D4A0,0x00000001)
eeObj.WriteMem32(0x0028D480,0x00000040)
eeObj.WriteMem32(0x0028D4A8,0x00000040)

--60fps by asasega
--00000002 00000001 00000000 00000000 00000000 00000000 00000103 00000103 00000000 00000000 00000007 00000066
--020000000100000000000000000000000000000000000000030100000301000000000000000000000700000066000000
eeObj.WriteMem32(0x0028D444,0x00000001)
end

emuObj.AddVsyncHook(widescreen)