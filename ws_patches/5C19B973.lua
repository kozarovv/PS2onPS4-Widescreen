apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=widescreen 16:9 (NTSC-K) hack by 99skull
--credit goes to nemesis2000
eeObj.WriteMem32(0x00146F3C,0x3C0243D6)
eeObj.WriteMem32(0x00198ABC,0x3C023F2B)
end

emuObj.AddVsyncHook(widescreen)