apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Arc - Twilight of the Spirits - Widescreen Hack (16:9) (NTSC-U)
eeObj.WriteMem32(0x00256F84,0x3F0cCCCD)
eeObj.WriteMem32(0x00257440,0x3F0cCCCD)
eeObj.WriteMem32(0x00257978,0x3F0cCCCD)
end

emuObj.AddVsyncHook(widescreen)