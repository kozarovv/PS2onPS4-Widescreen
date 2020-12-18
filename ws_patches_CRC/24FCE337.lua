apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by pelvicthrustman
--comment= PAL Port by PuNkY_BoY

eeObj.WriteMem32(0x004c3fcc,0x3c013f00)
eeObj.WriteMem32(0x004c3fec,0x4481f800)
eeObj.WriteMem32(0x004c4040,0x461f0003)
end

emuObj.AddVsyncHook(widescreen)