apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=NTSC-J Widescreen Hack by synce
eeObj.WriteMem32(0x00324264,0x3fc65461)
end

emuObj.AddVsyncHook(widescreen)