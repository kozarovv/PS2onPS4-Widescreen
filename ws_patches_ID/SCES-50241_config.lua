apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=The Bouncer (PAL-M6) (SCES-50241)
--comment=Widescreen Hack (16:9) by ElHecht
--
--16:9
eeObj.WriteMem32(0x0037EC3C,0x3F400000)
--eeObj.WriteMem32(0x0037EC40,0x3F069536)
--eeObj.WriteMem32(0x003A4788,0x3F800000)
end

emuObj.AddVsyncHook(widescreen)