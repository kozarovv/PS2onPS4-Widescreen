apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Medal of Honor - European Assault (NTSC-K)(SLKA-25243)
--comment=Widescreen hack by nemesis2000 (NTSC-K by Arapapa)

--Widescreen hack 16:9
eeObj.WriteMem32(0x0012927c,0x00000000)
end

emuObj.AddVsyncHook(widescreen)