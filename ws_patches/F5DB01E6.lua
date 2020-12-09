apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Tiger Woods PGA Tour 2001 (J)(SLPS-20092)
--comment=Widescreen Hack by Arapapa

--Widescreen hack 16:9

--X-Fov
--0000803f 0af67f3f 17d87f3f (1st)
eeObj.WriteMem32(0x001ebd98,0x3faaaaab)

------------------------------------
--Zoom
--eeObj.WriteMem32(0x001341a0,0x3c013f40)

--render fix
--eeObj.WriteMem32(0x00139a5c,0x3c013f40)
end

emuObj.AddVsyncHook(widescreen)