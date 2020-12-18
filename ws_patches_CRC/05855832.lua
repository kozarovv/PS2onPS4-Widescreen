apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

eeObj.WriteMem32(0x0016b998,0x08057958)

eeObj.WriteMem32(0x0015e560,0x3c013f40)
eeObj.WriteMem32(0x0015e564,0x4481f000)
eeObj.WriteMem32(0x0015e568,0xc6010068)
eeObj.WriteMem32(0x0015e56c,0xc602006c)
eeObj.WriteMem32(0x0015e570,0x461e0843)
eeObj.WriteMem32(0x0015e574,0xe6010068)
eeObj.WriteMem32(0x0015e578,0x0805ae68)
end

emuObj.AddVsyncHook(widescreen)