apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Silent Hill 3 (SLKA_250.65)
--comment=Widescreen hack (NTSC-K by Arapapa)

--Wide Screen 16:9
eeObj.WriteMem32(0x0012165c,0x3c013f40)
eeObj.WriteMem32(0x00121660,0x44810000)
eeObj.WriteMem32(0x00121668,0x4600c602)

--FMV's fix by nemesis2000 
eeObj.WriteMem32(0x002b5e14,0x24106d50)
eeObj.WriteMem32(0x002b5e18,0x24037000)
eeObj.WriteMem32(0x002b5e28,0x24112550)
eeObj.WriteMem32(0x002b5e2c,0x24032000)

--Items & Weapons and Supplies fix
--4c3f023c cdcc4234 00108544
eeObj.WriteMem32(0x002ad6e8,0x3c023f19)
eeObj.WriteMem32(0x002ad6ec,0x3442999a)

--black borders fix by nemesis2000 
--eeObj.WriteMem32(0x002b5f4c,0x24100000)
--eeObj.WriteMem32(0x002b5f54,0x24100000)
--eeObj.WriteMem32(0x002b5f6c,0x24100000)
--eeObj.WriteMem32(0x002b5f70,0x24100000)
end

emuObj.AddVsyncHook(widescreen)