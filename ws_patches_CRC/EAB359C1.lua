apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Downforce NTSC-U
--comment=Widescreen Hack
eeObj.WriteMem32(0x0010EE50,0x3C013F40)
end

emuObj.AddVsyncHook(widescreen)