apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Armored Core 3 (PAL-E) (SLES-51399)
--comment=Widescreen hack by ElHecht

-- 16:9
eeObj.WriteMem32(0x002e8c7c,0x3c013f40)
eeObj.WriteMem32(0x002e8c88,0x44810000)
eeObj.WriteMem32(0x002e8c8c,0x4600c602)
eeObj.WriteMem32(0x0026dbcc,0x3c0143d6)

-- 16:10
--eeObj.WriteMem32(0x002e8c7c,0x3c013f55)
--eeObj.WriteMem32(0x002e8c80,0x34215555)
--eeObj.WriteMem32(0x002e8c88,0x44810000)
--eeObj.WriteMem32(0x002e8c8c,0x4600c602)
--eeObj.WriteMem32(0x0026dbcc,0x3c0143c1)
end

emuObj.AddVsyncHook(widescreen)