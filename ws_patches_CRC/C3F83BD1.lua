apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Athens 2004 (E)(SCES-52410)
--comment=Widescreen Hack by Arapapa

--Widescreen hack 16:9

--X-Fov 403f013c 00b08144 04004010
eeObj.WriteMem32(0x00270cf8,0x3c013f10)
end

emuObj.AddVsyncHook(widescreen)