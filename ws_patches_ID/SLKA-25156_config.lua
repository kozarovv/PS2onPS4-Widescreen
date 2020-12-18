apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Medal of Honor - Vanguard (K)(SLKA-25156)
--comment=Widescreen hack by nemesis2000 (NTSC-K by Arapapa)

--09 00 60 10 86 A8 00 46 AA 3F 01 3C
eeObj.WriteMem32(0x001308b4,0x00000000)
end

emuObj.AddVsyncHook(widescreen)