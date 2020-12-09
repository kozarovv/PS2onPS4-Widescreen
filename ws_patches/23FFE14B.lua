apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

--Matrix Hack (3rd)
eeObj.WriteMem32(0x002147cc,0x3c013f40)
eeObj.WriteMem32(0x002147d0,0x44810000)
eeObj.WriteMem32(0x002147d8,0x4600c602)

--------------------------------------------------/
--Zoom
--803f013c 00008144 2d20a003 (3rd)
--eeObj.WriteMem32(0x002147f0,0x3c013fab)

--Y-Fov (Except background Picture (Cloud)
--efeeee3f -> f5491f40
--eeObj.WriteMem32(0x003a8008,0x401F49F5)
end

emuObj.AddVsyncHook(widescreen)