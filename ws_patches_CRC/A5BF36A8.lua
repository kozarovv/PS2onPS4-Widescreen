apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Paris-Dakar Rally (E)(SLES-50212)
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

--X-Fov
--403f033c 00688344 7a44033c
eeObj.WriteMem32(0x001abb4c,0x3c033f10)

--403f023c 4d00013c
eeObj.WriteMem32(0x0017c480,0x3c023f10)
end

emuObj.AddVsyncHook(widescreen)