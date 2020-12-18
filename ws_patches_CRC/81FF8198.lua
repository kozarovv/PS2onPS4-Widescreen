apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

--Normal play
eeObj.WriteMem32(0x00BDF298,0x3FE38E32)

--Turbo and Power blast play
eeObj.WriteMem32(0x00BDF378,0x3FE38E32)
eeObj.WriteMem32(0x00BDF430,0x3FE38E32)
eeObj.WriteMem32(0x00BDF4E4,0x3FE38E32)
eeObj.WriteMem32(0x00BDF5C4,0x3FE38E32)
eeObj.WriteMem32(0x00BDF67C,0x3FE38E32)
eeObj.WriteMem32(0x00BDF730,0x3FE38E32)
end

emuObj.AddVsyncHook(widescreen)