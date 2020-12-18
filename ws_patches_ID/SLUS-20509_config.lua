apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Sega Soccer Slam (U)(SLUS-20509)
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

--803f013c 00088144 4000b027 (1st)
eeObj.WriteMem32(0x00231f2c,0x3c013f40)
end

emuObj.AddVsyncHook(widescreen)