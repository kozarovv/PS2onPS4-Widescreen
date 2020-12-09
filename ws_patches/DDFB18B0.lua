apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Shadow Hearts (PlayStation2 the Best) [NTSC-J] [SLPS-73418]
--comment=Widescreen Hack

--Widescreen hack 16:9
eeObj.WriteMem32(0x0028cec0,0x3c043f40)
eeObj.WriteMem32(0x00281d64,0x3c023f40)

--Status screen and souls information. plus optional font size reduction (disabled by default) by sergx12
eeObj.WriteMem32(0x0039e670,0x3c023f40)
eeObj.WriteMem32(0x003d37a4,0x3c023f40)
eeObj.WriteMem32(0x003ec3dc,0x3c023f40)
end

emuObj.AddVsyncHook(widescreen)