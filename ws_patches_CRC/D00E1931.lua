apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Armored Core 3 [NTSC-J] (SLPS-25112)
--comment=Widescreen hack by ElHecht

-- 16:9
eeObj.WriteMem32(0x002e6c3c,0x3c013f40)
eeObj.WriteMem32(0x002e6c48,0x44810000)
eeObj.WriteMem32(0x002e6c4c,0x4600c602)
eeObj.WriteMem32(0x0026caf4,0x3c0143d6)

-- 16:10
--eeObj.WriteMem32(0x002e6c3c,0x3c013f55)
--eeObj.WriteMem32(0x002e6c40,0x34215555)
--eeObj.WriteMem32(0x002e6c48,0x44810000)
--eeObj.WriteMem32(0x002e6c4c,0x4600c602)
--eeObj.WriteMem32(0x0026caf4,0x3c0143c1)
end

emuObj.AddVsyncHook(widescreen)