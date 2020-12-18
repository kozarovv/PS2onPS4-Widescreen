apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by nemesis2000 (pnach by nemesis2000 )
eeObj.WriteMem32(0x0013b450,0x3c033f27)
eeObj.WriteMem32(0x0013b4a0,0x3c013f40)
eeObj.WriteMem32(0x0013b4a4,0x4481a000)
eeObj.WriteMem32(0x0013b4a8,0x46146d83)
eeObj.WriteMem32(0x0013b4ac,0x46007546)
eeObj.WriteMem32(0x0013b4b0,0x46007e86)

--cutscenes black borders fix (optional memory hack) - may cause error
--eeObj.WriteMem32(0x002A8578,0x24030000)

--battle black borders fix (optional memory hack) - may cause error
--eeObj.WriteMem32(0x0032CEF8,0x24030000)
end

emuObj.AddVsyncHook(widescreen)