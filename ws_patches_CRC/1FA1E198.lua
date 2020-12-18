apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack by Little Gaint

eeObj.WriteMem32(0x0123a3dc,0x3F206D3A)
eeObj.WriteMem32(0x01241C9C,0x3F5AE148)
end

emuObj.AddVsyncHook(widescreen)