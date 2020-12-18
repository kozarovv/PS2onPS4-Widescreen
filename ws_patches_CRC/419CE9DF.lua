apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=NTSC-J Widescreen Hack by synce
eeObj.WriteMem32(0x003DD46C,0x3F998FC5)
eeObj.WriteMem32(0x003DD7E0,0x3F307169)
end

emuObj.AddVsyncHook(widescreen)