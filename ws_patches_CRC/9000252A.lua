apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=SkyGunner [NTSC-J] (SCPS-11006)
--comment=Widescreen Hack 
eeObj.WriteMem32(0x00126724,0x3c013f40)
eeObj.WriteMem32(0x00126728,0x44810000)
eeObj.WriteMem32(0x00126730,0x4600c602)
end

emuObj.AddVsyncHook(widescreen)