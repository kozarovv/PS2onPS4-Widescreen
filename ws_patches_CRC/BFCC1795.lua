apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=God of War (SCKA_300.02)
--comment=widescreen 16:9 (NTSC-K) hack by 99skull
--credit goes to nemesis2000
eeObj.WriteMem32(0x00169308,0x3C013F22)
end

emuObj.AddVsyncHook(widescreen)