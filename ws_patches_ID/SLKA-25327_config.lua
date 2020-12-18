apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Harry Potter and The Goblet of Fire (K)(SLKA-25327)
--comment=Widescreen hack (NTSC-K by Arapapa)

--Widescreen hack 16:9

eeObj.WriteMem32(0x0029ff04,0x3c013fe3)
eeObj.WriteMem32(0x0029ff08,0x34218e39)
end

emuObj.AddVsyncHook(widescreen)