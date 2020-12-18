apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Speed Racer SLUS_218.12
--comment=Widescreen hack by pelvicthrustman

eeObj.WriteMem32(0x004c314c,0x3c013f00)
eeObj.WriteMem32(0x004c315c,0x4481f800)
eeObj.WriteMem32(0x004c31b0,0x461f0003)
end

emuObj.AddVsyncHook(widescreen)