apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=GunGriffon Blaze (U)(SLUS-20080]
--comment=Widescreen Hack by Arapapa

--Widescreen hack 16:9

--X-Fov
eeObj.WriteMem32(0x00211684,0x3c013f40)

eeObj.WriteMem32(0x00212168,0x3c013f40)
end

emuObj.AddVsyncHook(widescreen)