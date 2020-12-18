apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=widescreen 16:9 (NTSC-K) hack by 99skull
--credit goes to nemesis2000
eeObj.WriteMem32(0x001770C8,0x3C013F0E)
end

emuObj.AddVsyncHook(widescreen)