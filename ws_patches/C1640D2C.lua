apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Wild Arms 5 NTSC-U
--comment=Widescreen Hack
eeObj.WriteMem32(0x00153994,0x3C024500)
eeObj.WriteMem32(0x00153a30,0x3C023F40)
eeObj.WriteMem32(0x0015391C,0x3C02442B)
end

emuObj.AddVsyncHook(widescreen)