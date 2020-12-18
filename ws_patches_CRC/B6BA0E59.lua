apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=The Secret Saturdays - Beasts of the 5th Sun (U&PAL)(SLUS-21896,SLES-55546)
--comment=Widescreen hack by Arapapa

--Widescreen 16:9

--893f013c 93242134
eeObj.WriteMem32(0x0011a67c,0x3c013f4d)
eeObj.WriteMem32(0x0011a680,0x3421b6d4)
end

emuObj.AddVsyncHook(widescreen)