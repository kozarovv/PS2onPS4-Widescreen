apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by No.47
eeObj.WriteMem32(0x003BE83C,0x00000001)
eeObj.WriteMem32(0x004BC150,0x00000001)
eeObj.WriteMem32(0x004BD18C,0x00000001)
eeObj.WriteMem32(0x004CA554,0x3FE38E39)
eeObj.WriteMem32(0x004CA5F0,0x3FAAAAAB)
eeObj.WriteMem32(0x004CA5F4,0x3FE38E39)
eeObj.WriteMem32(0x004CA694,0x3FE38E39)
eeObj.WriteMem32(0x005BC390,0x3F400000)
end

emuObj.AddVsyncHook(widescreen)