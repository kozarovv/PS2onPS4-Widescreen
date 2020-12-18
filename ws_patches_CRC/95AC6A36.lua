apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Simple 2000 Series Vol. 39: Boku no Machi Zukuri: Machi-ing Maker++
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

--X-Fov
eeObj.WriteMem32(0x0012aecc,0x3c0a3f40)

--Render Fix
eeObj.WriteMem32(0x00186d44,0x3c033fb0)
end

emuObj.AddVsyncHook(widescreen)