apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Adventure of Tokyo Disney Sea (J)(SLPM-65061)
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

--Zoom fix
eeObj.WriteMem32(0x00107eec,0x3c0143F0)

--X-Fov + Zoom
eeObj.WriteMem32(0x00107ee0,0x3c0143A8)

--e043013c 00108144 3000043c 2044013c
--a843013c 00108144 3000043c f043013c

--eeObj.WriteMem32(0x00107efc,0x3c014395)
end

emuObj.AddVsyncHook(widescreen)