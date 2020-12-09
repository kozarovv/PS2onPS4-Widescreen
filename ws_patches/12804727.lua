apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack (16:9) by ElHecht

-- 16:9
eeObj.WriteMem32(0x0030afc8,0x3c033f1f)
eeObj.WriteMem32(0x007d6158,0x0014877D)

-- menu fix
eeObj.WriteMem32(0x00C15870,0x43A90000)
eeObj.WriteMem32(0x00C17AB0,0x43420000)

eeObj.WriteMem32(0x00AC3D50,0x42860000)
eeObj.WriteMem32(0x00AC3D90,0x42860000)
eeObj.WriteMem32(0x00AC3DD0,0x42860000)
eeObj.WriteMem32(0x00AC3E10,0x42860000)
eeObj.WriteMem32(0x00AC3E50,0x42860000)
eeObj.WriteMem32(0x00AC3E90,0x42860000)
eeObj.WriteMem32(0x00AC3ED0,0x42860000)
eeObj.WriteMem32(0x00AC3F10,0x42860000)
eeObj.WriteMem32(0x00AC3F50,0x42860000)
eeObj.WriteMem32(0x00AC3F90,0x42860000)
eeObj.WriteMem32(0x00AC3FD0,0x42860000)

eeObj.WriteMem32(0x00AC3D58,0x43DF8000)
eeObj.WriteMem32(0x00AC3D98,0x43DF8000)
eeObj.WriteMem32(0x00AC3DD8,0x43DF8000)
eeObj.WriteMem32(0x00AC3E18,0x43DF8000)
eeObj.WriteMem32(0x00AC3E58,0x43DF8000)
eeObj.WriteMem32(0x00AC3E98,0x43DF8000)
eeObj.WriteMem32(0x00AC3ED8,0x43DF8000)
eeObj.WriteMem32(0x00AC3F18,0x43DF8000)
eeObj.WriteMem32(0x00AC3F58,0x43DF8000)
eeObj.WriteMem32(0x00AC3F98,0x43DF8000)
eeObj.WriteMem32(0x00AC3FD8,0x43DF8000)
end

emuObj.AddVsyncHook(widescreen)