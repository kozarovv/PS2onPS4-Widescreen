apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by Little Giant

--16:9
eeObj.WriteMem32(0x001498D0,0x3c013f40)
eeObj.WriteMem32(0x001498DC,0x4481f000)
eeObj.WriteMem32(0x00149904,0x461e0002)
eeObj.WriteMem32(0x00149908,0xE6400000)
eeObj.WriteMem32(0x0014990c,0xC6010008)
eeObj.WriteMem32(0x00149910,0x44830000)

--16:10
--eeObj.WriteMem32(0x001498D0,0x3c013f55)
--eeObj.WriteMem32(0x001498D4,0x34425555)
--eeObj.WriteMem32(0x001498DC,0x4481f000)
--eeObj.WriteMem32(0x00149904,0x461e0002)
--eeObj.WriteMem32(0x00149908,0xE6400000)
--eeObj.WriteMem32(0x0014990c,0xC6010008)
--eeObj.WriteMem32(0x00149910,0x44830000)
end

emuObj.AddVsyncHook(widescreen)