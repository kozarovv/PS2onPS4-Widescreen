apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack (NTSC-J by Arapapa)

--Widescreen hack 16:9

eeObj.WriteMem32(0x00146c08,0x3c023f1f)
eeObj.WriteMem32(0x00146c10,0x344249f9)
eeObj.WriteMem32(0x00146e24,0x3c023f1f)
eeObj.WriteMem32(0x00146e2c,0x344249f9)

eeObj.WriteMem32(0x001e75bc,0x3c044328)
end

emuObj.AddVsyncHook(widescreen)