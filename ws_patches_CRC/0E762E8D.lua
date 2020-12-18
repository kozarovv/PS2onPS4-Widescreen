apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=NTSC-J Widescreen Hack by synce
eeObj.WriteMem32(0x002F5034,0x3fc65461)

--No interlacing by asasega
--01003126 2d206002 2d380000
eeObj.WriteMem32(0x002b0960,0x64040001)
end

emuObj.AddVsyncHook(widescreen)