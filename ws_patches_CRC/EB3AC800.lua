apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Front Mission 4 (SLUS_208.88)
--comment=widescreen
--widescreen 16:9 hack by 99skull
eeObj.WriteMem32(0x00159438,0x3C024380)
eeObj.WriteMem32(0x001594D4,0x3C023EE6)
eeObj.WriteMem32(0x001594DC,0x34426666)
eeObj.WriteMem32(0x002184F8,0x3C023EE6)
eeObj.WriteMem32(0x00218500,0x34426666)
end

emuObj.AddVsyncHook(widescreen)