apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Jak 3 (NTSC-K) (SCKA-20040)
--comment=Widescreen Hack by ElHecht (NTSC-K by Arapapa)

-- 16:9
--003f033c 00008344 00088744
eeObj.WriteMem32(0x0030aec8,0x3c033f1f)

--71601400 014c1400 014c1400 (Pal 71611400)
eeObj.WriteMem32(0x007D6058,0x0014877D)

-- menu fix
eeObj.WriteMem32(0x00C15770,0x43A90000)
eeObj.WriteMem32(0x00C179B0,0x43420000)

--eeObj.WriteMem32(0x00AC3D50,0x42860000)
--eeObj.WriteMem32(0x00AC3D90,0x42860000)
--eeObj.WriteMem32(0x00AC3DD0,0x42860000)
--eeObj.WriteMem32(0x00AC3E10,0x42860000)
--eeObj.WriteMem32(0x00AC3E50,0x42860000)
--eeObj.WriteMem32(0x00AC3E90,0x42860000)
--eeObj.WriteMem32(0x00AC3ED0,0x42860000)
--eeObj.WriteMem32(0x00AC3F10,0x42860000)
--eeObj.WriteMem32(0x00AC3F50,0x42860000)
--eeObj.WriteMem32(0x00AC3F90,0x42860000)
--eeObj.WriteMem32(0x00AC3FD0,0x42860000)

--eeObj.WriteMem32(0x00AC3D58,0x43DF8000)
--eeObj.WriteMem32(0x00AC3D98,0x43DF8000)
--eeObj.WriteMem32(0x00AC3DD8,0x43DF8000)
--eeObj.WriteMem32(0x00AC3E18,0x43DF8000)
--eeObj.WriteMem32(0x00AC3E58,0x43DF8000)
--eeObj.WriteMem32(0x00AC3E98,0x43DF8000)
--eeObj.WriteMem32(0x00AC3ED8,0x43DF8000)
--eeObj.WriteMem32(0x00AC3F18,0x43DF8000)
--eeObj.WriteMem32(0x00AC3F58,0x43DF8000)
--eeObj.WriteMem32(0x00AC3F98,0x43DF8000)
--eeObj.WriteMem32(0x00AC3FD8,0x43DF8000)
end

emuObj.AddVsyncHook(widescreen)