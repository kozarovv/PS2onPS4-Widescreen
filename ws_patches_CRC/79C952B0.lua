apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=NTSC-J Widescreen Hack by synce
eeObj.WriteMem32(0x01D0DEA0,0x3F400000)
end

emuObj.AddVsyncHook(widescreen)