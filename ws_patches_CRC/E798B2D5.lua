apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Hot Wheels - Stunt Track Challenge (U)(SLUS-20954)
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

eeObj.WriteMem32(0x00BA949C,0x3faaaaab)
eeObj.WriteMem32(0x00BCCD3C,0x3faaaaab)
end

emuObj.AddVsyncHook(widescreen)