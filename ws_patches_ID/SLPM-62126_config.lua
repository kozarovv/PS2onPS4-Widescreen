apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Hyper Sports 2002 Winter (J)(SLPM-62126)
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

eeObj.WriteMem32(0x001542bc,0x3c053fc0)
end

emuObj.AddVsyncHook(widescreen)