apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=IHRA Drag Racing - Sportsman Edition (U)(SLUS-21256)
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

eeObj.WriteMem32(0x002fefd4,0x08129860)

eeObj.WriteMem32(0x004a6180,0x46002d03)
eeObj.WriteMem32(0x004a6184,0x3C013F40)
eeObj.WriteMem32(0x004a6188,0x4481F000)
eeObj.WriteMem32(0x004a618C,0x461ea502)
eeObj.WriteMem32(0x004a6190,0x080bfbf6)
end

emuObj.AddVsyncHook(widescreen)