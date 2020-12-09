apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Official U.S. PlayStation Magazine Demo Disc 055 (NTSC-U) [SCUS-97181] [96A608C5]
--comment=Frequency demo widescreen hacks by Aced14

--Frequency Demo

--16:9 Widescreen
eeObj.WriteMem32(0x00FF5246,0x00828450)
eeObj.WriteMem32(0x004E541C,0x08144FF7)
eeObj.WriteMem32(0x00513FDC,0x3C013F40)
eeObj.WriteMem32(0x00513FE0,0x4481F800)
eeObj.WriteMem32(0x00513FE4,0x461F07C2)
eeObj.WriteMem32(0x00513FE8,0x08139509)
eeObj.WriteMem32(0x00513FEC,0xE61F0120)

--eeObj.WriteMem32(0x0054944C,0x00000355)
end

emuObj.AddVsyncHook(widescreen)