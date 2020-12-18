apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Gachinko Pro Yakyuu (J)(SLPS-20301)
--comment=Widescreen Hack by Arapapa

--Wide hack 16:9 

--Zoom
eeObj.WriteMem32(0x0010b0ac,0x3c013f40)

--Y-Fov
eeObj.WriteMem32(0x00296cbc,0x3c023f10)
end

emuObj.AddVsyncHook(widescreen)