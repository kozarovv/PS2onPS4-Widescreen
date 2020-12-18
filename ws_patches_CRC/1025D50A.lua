apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by ElHecht

-- 16:9
eeObj.WriteMem32(0x002457ac,0x0812d2c1)
eeObj.WriteMem32(0x002457b0,0x00000000)
eeObj.WriteMem32(0x004b4b04,0x3c013f40)
eeObj.WriteMem32(0x004b4b08,0x4481f000)
eeObj.WriteMem32(0x004b4b0c,0x461e0002)
eeObj.WriteMem32(0x004b4b10,0xe6000124)
eeObj.WriteMem32(0x004b4b14,0xe6010128)
eeObj.WriteMem32(0x004b4b18,0x080915ec)
end

emuObj.AddVsyncHook(widescreen)