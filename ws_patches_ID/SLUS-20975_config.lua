apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Shonen Jump's One Piece  Grand Battle [NTSC-U] (SLUS-20975)
--comment=Widescreen Hack by Little Giant

--16:9
eeObj.WriteMem32(0x003f5898,0x3F400000)

--16:10
--eeObj.WriteMem32(0x003f5898,0x3F555555)

end

emuObj.AddVsyncHook(widescreen)