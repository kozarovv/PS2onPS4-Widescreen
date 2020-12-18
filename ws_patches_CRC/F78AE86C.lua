apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Disney's Stitch - Experiment 626 (U)(SCUS-97145)
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

--Y-Fov
--803f043c 80bf033c 
eeObj.WriteMem32(0x002367a4,0x3c03bfab)

--Zoom
--003f023c 1000bfff
eeObj.WriteMem32(0x00236354,0x3c023f20)
end

emuObj.AddVsyncHook(widescreen)