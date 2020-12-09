apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by nemesis2000 (pnach by nemesis2000)

--gameplay
eeObj.WriteMem32(0x001b4a64,0x3c023f28)
eeObj.WriteMem32(0x001b4a68,0x3442f5c3)

--Items & Weapons and Supplies fix
eeObj.WriteMem32(0x002ad978,0x3c023f19)
eeObj.WriteMem32(0x002ad97c,0x3442999a)

--FMV's fix
eeObj.WriteMem32(0x002b60b8,0x24112550)
eeObj.WriteMem32(0x002b60a4,0x24106D50)
eeObj.WriteMem32(0x002b61dc,0x24100000)
eeObj.WriteMem32(0x002b61e4,0x24100000)

eeObj.WriteMem32(0x002b60bc,0x24032000)
eeObj.WriteMem32(0x002b60a8,0x24037000)
eeObj.WriteMem32(0x002b61fc,0x24100000)
eeObj.WriteMem32(0x002b6200,0x24100000)

--remove cutscene black borders, and small vertical borders on left/right
eeObj.WriteMem32(0x001ee320,0x03E00008)
eeObj.WriteMem32(0x001ee324,0x00000000)
end

emuObj.AddVsyncHook(widescreen)