apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Silent Hill 3 [NTSC-J] (SLPM-65257)
--comment=NTSC-J Widescreen Hack by nemesis2000

eeObj.WriteMem32(0x001b4a24,0x3c023f28)
eeObj.WriteMem32(0x001b4a28,0x3442f5c3)

--Items & Weapons and Supplies fix
--4c3f023c cdcc4234 00108544
eeObj.WriteMem32(0x002ad938,0x3c023f19)
eeObj.WriteMem32(0x002ad93c,0x3442999a)

--Oringal FMV's fix by nemesis2000
eeObj.WriteMem32(0x002b6078,0x24112550)
eeObj.WriteMem32(0x002b6064,0x24106D50)
eeObj.WriteMem32(0x002b619c,0x24100000)
eeObj.WriteMem32(0x002b61a4,0x24100000)

eeObj.WriteMem32(0x002b607c,0x24032000)
eeObj.WriteMem32(0x002b6068,0x24037000)
eeObj.WriteMem32(0x002b61bc,0x24100000)
eeObj.WriteMem32(0x002b61c0,0x24100000)
end

emuObj.AddVsyncHook(widescreen)