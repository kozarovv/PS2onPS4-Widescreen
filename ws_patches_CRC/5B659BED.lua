apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by nemesis2000 (pnach by Arapapa)

--both fov+
eeObj.WriteMem32(0x0013b450,0x3c033f27)

--vert fov-
eeObj.WriteMem32(0x0013b4a0,0x3c013f40)
eeObj.WriteMem32(0x0013b4a4,0x4481a000)
eeObj.WriteMem32(0x0013b4a8,0x46146d83)
eeObj.WriteMem32(0x0013b4ac,0x46007546)
eeObj.WriteMem32(0x0013b4b0,0x46007e86)

--cutscenes black borders fix (optional memory hack)
--(01000324 2200013C 03000010)  change to
--(00000324 2200013C 03000010)
eeObj.WriteMem32(0x002A82D8,0x24030000)

--battle black borders fix (optional memory hack)
--(10000324 0000BFDF 000043AC 040040AC BA310D08 1000BD27 F0FFBD27 3A00033C 20000224)  change to
--(00000324 0000BFDF 000043AC 040040AC BA310D08 1000BD27 F0FFBD27 3A00033C 00000224)
eeObj.WriteMem32(0x0032BEF0,0x24030000)
eeObj.WriteMem32(0x0032BF10,0x24020000)
end

emuObj.AddVsyncHook(widescreen)