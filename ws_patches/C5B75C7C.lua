apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=The Oneechanpon
--comment=NTSC-J Widescreen Hack by synce
eeObj.WriteMem32(0x00495104,0x3F400000)
end

emuObj.AddVsyncHook(widescreen)