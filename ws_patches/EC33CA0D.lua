apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Kaido - Touge no Densetsu [NTSC-J] (SLPM-66022)
--comment=Widescreen hack by nemesis2000 (pnach by nemesis2000)
eeObj.WriteMem32(0x0016323c,0x3c043f40)
eeObj.WriteMem32(0x0036663c,0x3c033f40)
end

emuObj.AddVsyncHook(widescreen)