apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Doko Demo Issyo - Toro to Ippai (J)(SCPS-15081)
--comment=Widescreen Hack by Arapapa

--Widescreen hack 16:9

--X-Fov (4th)
--It's a Memory Hack. but ISO patch is possible
--00004040 00000000 00000000 00000000 01000000
--00004040 00000000 0000403f 00000000 01000000
eeObj.WriteMem32(0x005C3CF0,0x3F400000)
end

emuObj.AddVsyncHook(widescreen)