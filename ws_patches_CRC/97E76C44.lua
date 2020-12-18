apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Worms 3D (U)(SLUS-20894)
--comment=Widescreen Hack by El_Patas & Arapapa

--Widescreen hack 16:9
eeObj.WriteMem32(0x002e0e34,0x3c013f40)
eeObj.WriteMem32(0x002e0e38,0x4481f000)
eeObj.WriteMem32(0x002e0e48,0x460a0843)
eeObj.WriteMem32(0x002e0e4c,0x461e0842)

--------------------------------------------/
--Zoom
--eeObj.WriteMem32(0x00290280,0x3c014010)
--eeObj.WriteMem32(0x002ca964,0x3C013Ff0)
--eeObj.WriteMem32(0x002e0dec,0x3c014080)
--Y-Fov
--803f013c 00488144 0700a26b (2nd)
--eeObj.WriteMem32(0x002e0ed8,0x3c013f00)

--eeObj.WriteMem32(0x002e0ef8,0x3c0135f6)
end

emuObj.AddVsyncHook(widescreen)