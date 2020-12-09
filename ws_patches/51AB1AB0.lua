apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

eeObj.WriteMem32(0x003220c8,0x080e25f8)
eeObj.WriteMem32(0x003220cc,0x00000000)

eeObj.WriteMem32(0x003897e0,0x3c013f40)
eeObj.WriteMem32(0x003897e4,0x4481f000)
eeObj.WriteMem32(0x003897e8,0xc6010068)
eeObj.WriteMem32(0x003897ec,0xc602006c)
eeObj.WriteMem32(0x003897f0,0x461e0843)
eeObj.WriteMem32(0x003897f4,0xe6010068)
eeObj.WriteMem32(0x003897f8,0x080c8834)
end

emuObj.AddVsyncHook(widescreen)