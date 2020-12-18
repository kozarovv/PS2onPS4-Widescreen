apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=NTSC-J Widescreen Hack by synce (NTSC-K by Arapapa)
eeObj.WriteMem32(0x002B51F4,0x3F400000)
end

emuObj.AddVsyncHook(widescreen)