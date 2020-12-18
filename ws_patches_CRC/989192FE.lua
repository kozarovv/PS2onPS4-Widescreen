apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Knight Rider (PAL-M4)(SLES-51011)
--comment=Widescreen Fix by ThirteenAG https:--thirteenag.github.io/wfp#kr

eeObj.WriteMem32(0x003E3600,short,3FE3
eeObj.WriteMem32(0x003E3604,short,8E39

eeObj.WriteMem32(0x003EB864,short,3FE3
eeObj.WriteMem32(0x003EB868,short,8E39

eeObj.WriteMem32(0x00444108,0x3FE38E39)

eeObj.WriteMem32(0x003EB910,short,3C2C
eeObj.WriteMem32(0x003EB914,short,52D4
end

emuObj.AddVsyncHook(widescreen)