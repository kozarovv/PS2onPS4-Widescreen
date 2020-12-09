apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Spyro: A Hero's Tail (SLUS-20884)
--comment=Widescreen

--Widescreen + Extra Perspective
eeObj.WriteMem32(0x003B1B70,0x3C013F10)
eeObj.WriteMem32(0x003B1B84,0x3C013F10)
eeObj.WriteMem32(0x003B21B0,0x3C013EC0)
end

emuObj.AddVsyncHook(widescreen)