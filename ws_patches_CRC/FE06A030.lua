apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Silent Hill 2: Greatest Hits (NTSC-U)
--comment=Widescreen hack

--16:9
eeObj.WriteMem32(0x002d6b30,0x3F28F5C3)
eeObj.WriteMem32(0x00189d98,0x3c034455)

--FMV and black borders fix
eeObj.WriteMem32(0x002806d8,0x24100004)
eeObj.WriteMem32(0x002806dc,0x24030004)
eeObj.WriteMem32(0x002806bc,0x34068fc0)
eeObj.WriteMem32(0x0028068c,0x3c027040)

--Lens flare fix
eeObj.WriteMem32(0x0018b6b0,0x3c024010)

eeObj.WriteMem32(0x0018b72c,0x3c0243a8)

eeObj.WriteMem32(0x0018c384,0x3c024010)

eeObj.WriteMem32(0x0018bfac,0x3c0243a8)
eeObj.WriteMem32(0x0018c028,0x3c0243a8)
eeObj.WriteMem32(0x0018c41c,0x3c0243a8)
eeObj.WriteMem32(0x0018c498,0x3c0243a8)
eeObj.WriteMem32(0x0018ca64,0x3c0243a8)
eeObj.WriteMem32(0x0018caf8,0x3c0243a8)
eeObj.WriteMem32(0x0018cb8c,0x3c0243a8)
eeObj.WriteMem32(0x0018cc20,0x3c0243a8)
eeObj.WriteMem32(0x0018cfb4,0x3c0243a8)
eeObj.WriteMem32(0x0018d048,0x3c0243a8)
eeObj.WriteMem32(0x0018d0dc,0x3c0243a8)
eeObj.WriteMem32(0x0018d170,0x3c0243a8)
eeObj.WriteMem32(0x0018d364,0x3c0243a8)
eeObj.WriteMem32(0x0018d3d0,0x3c0243a8)
eeObj.WriteMem32(0x0018d51c,0x3c0243a8)
eeObj.WriteMem32(0x0018d588,0x3c0243a8)

--black borders fix
--(0c00a286 ff7f4224 01004224) the second one
eeObj.WriteMem32(0x001b8a9c,0x86A20010)
end

emuObj.AddVsyncHook(widescreen)