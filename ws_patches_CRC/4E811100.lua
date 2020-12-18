apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by Little Giant

--16:9
eeObj.WriteMem32(0x002a642c,0x3c013f40)
eeObj.WriteMem32(0x002a6430,0x44810000)
eeObj.WriteMem32(0x002a6438,0x4600c602)
eeObj.WriteMem32(0x003d1bc4,0x442AAAAB)

--16:10
--eeObj.WriteMem32(0x002a642c,0x3c013f40)
--eeObj.WriteMem32(0x002a6430,0x34215555)
--eeObj.WriteMem32(0x002a6438,0x44810000)
--eeObj.WriteMem32(0x002a643c,0x4600c602)
--eeObj.WriteMem32(0x003d1bc4,0x442AAAAB)
end

emuObj.AddVsyncHook(widescreen)