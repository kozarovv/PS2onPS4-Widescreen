apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack
eeObj.WriteMem32(0x00143ae0,0x3c023ff3)
eeObj.WriteMem32(0x00143ae4,0x3443cf35)
eeObj.WriteMem32(0x003a3d98,0x3c023fab)
eeObj.WriteMem32(0x003fe720,0x3c033ff3)
eeObj.WriteMem32(0x003fe72c,0x3464cf35)
end

emuObj.AddVsyncHook(widescreen)