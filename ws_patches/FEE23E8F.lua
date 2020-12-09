apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=The Bouncer - Widescreen (16:9) (NTSC-U) -- by Hyakki
eeObj.WriteMem32(0x003923BC,0x3F400000)
end

emuObj.AddVsyncHook(widescreen)