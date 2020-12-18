apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by Little Giant

--16:9
eeObj.WriteMem32(0x001F331C,0x3C053F40)
eeObj.WriteMem32(0x001F334C,0x3C0343AB)

--16:10
--eeObj.WriteMem32(0x001F331C,0x3C053F56)
--eeObj.WriteMem32(0x001F334C,0x3C0343A0)
end

emuObj.AddVsyncHook(widescreen)