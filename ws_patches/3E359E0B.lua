apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack by Little Giant

--16:9
eeObj.WriteMem32(0x0013e3b4,0x3c023f40)
eeObj.WriteMem32(0x0013d9d4,0x3c023f40)
eeObj.WriteMem32(0x0013e230,0x3c023f80)
eeObj.WriteMem32(0x0025cd40,0x43E00000)
eeObj.WriteMem32(0x0025cd50,0x43E00000)

--black borders's fix (optional)
eeObj.WriteMem32(0x001945E4,0x24634230)
eeObj.WriteMem32(0x001947e0,0x24634230)
eeObj.WriteMem32(0x001948B4,0x24644230)
end

emuObj.AddVsyncHook(widescreen)