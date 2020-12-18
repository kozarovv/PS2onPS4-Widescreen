apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by Arapapa

--Widescreen 16:9

eeObj.WriteMem32(0x001d83e8,0x08086145)
eeObj.WriteMem32(0x00218514,0x3c013f40)
eeObj.WriteMem32(0x00218518,0x4481f000)
eeObj.WriteMem32(0x0021851c,0xc6010068)
eeObj.WriteMem32(0x00218520,0xc602006c)
eeObj.WriteMem32(0x00218524,0x461e0843)
eeObj.WriteMem32(0x00218528,0xe6010068)
eeObj.WriteMem32(0x0021852c,0x080760fc)
end

emuObj.AddVsyncHook(widescreen)