apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

eeObj.WriteMem32(0x001e80fc,0x0806bcb4)

eeObj.WriteMem32(0x001af2d0,0xc4810008)
eeObj.WriteMem32(0x001af2d4,0x3c013faa)
eeObj.WriteMem32(0x001af2d8,0x3421aaab)
eeObj.WriteMem32(0x001af2dc,0x4481f000)
eeObj.WriteMem32(0x001af2e0,0x461e0842)
eeObj.WriteMem32(0x001af2e4,0x0807a040)
end

emuObj.AddVsyncHook(widescreen)