apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Simple 2000 Series Vol. 28 - The Bushido Tsujigiri Ichidai (PBPX-95201)(SLPM-62335)
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

--X-Fov
eeObj.WriteMem32(0x001488dc,0x3c023f40)
eeObj.WriteMem32(0x001489ac,0x3c023f40)

--Render fix
eeObj.WriteMem32(0x00138090,0x3c053fc0)
end

emuObj.AddVsyncHook(widescreen)