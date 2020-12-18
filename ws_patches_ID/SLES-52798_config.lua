apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Vietcong - Purple Haze (E)(SLES-52798)
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

--Zoom
eeObj.WriteMem32(0x00220934,0x3c013f20)

--Y-Fov
eeObj.WriteMem32(0x00220944,0x3c013f10)
end

emuObj.AddVsyncHook(widescreen)