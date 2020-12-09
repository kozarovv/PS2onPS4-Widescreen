apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=widescreen 16:9 (NTSC-K) hack by 99skull
--credit goes to nemesis2000
eeObj.WriteMem32(0x004B536C,0x3C023F10)
eeObj.WriteMem32(0x004B53C4,0x3C02402B)
end

emuObj.AddVsyncHook(widescreen)