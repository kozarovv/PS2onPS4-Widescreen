apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=ICO [NTSC-J] (SCPS-11003)
--comment=Widescreen hack by nemesis2000 (pnach by Little Giant)

--widescreen
eeObj.WriteMem32(0x00114c6c,0x3c013f40)
eeObj.WriteMem32(0x00114c70,0x4481c000)
eeObj.WriteMem32(0x00114c80,0xc78780e0)
eeObj.WriteMem32(0x00114c84,0x46181082)

--render fix
eeObj.WriteMem32(0x00114624,0x240302aB)
eeObj.WriteMem32(0x00549778,0x44FA0000)

--black borders fix
eeObj.WriteMem32(0x00113380,0x3c010000)

--60 FPS by asasega
--00000002 00000001 00000000 00000000 00000000 00000000 00000103 00000103 00000000 00000000 00000007 00000066
--020000000100000000000000000000000000000000000000030100000301000000000000000000000700000066000000
eeObj.WriteMem32(0x0028D3C4,0x00000001)

--No interlacing by asasega
eeObj.WriteMem32(0x0028D3F8,0x00000001)
eeObj.WriteMem32(0x0028D420,0x00000001)
eeObj.WriteMem32(0x0028D400,0x00000040)
eeObj.WriteMem32(0x0028D428,0x00000040)
end

emuObj.AddVsyncHook(widescreen)