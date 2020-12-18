apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack by Arapapa

--Widescreen hack 16:9

eeObj.WriteMem32(0x0019a430,0x08106838)

eeObj.WriteMem32(0x0041a0e0,0x46020002)
eeObj.WriteMem32(0x0041a0e4,0x3c013faa)
eeObj.WriteMem32(0x0041a0e8,0x3421aaab)
eeObj.WriteMem32(0x0041a0ec,0x4481f000)
eeObj.WriteMem32(0x0041a0f0,0x461e0002)
eeObj.WriteMem32(0x0041a0f4,0x0806690d)
end

emuObj.AddVsyncHook(widescreen)