apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Innocent Life - A Futuristic Harvest Moon (NTSC-U) (SLUS-21641)
--comment=Widescreen Hack by VIRGIN KLM

--Widescreen
eeObj.WriteMem32(0x0023BDB0,0x3F199999)
end

emuObj.AddVsyncHook(widescreen)