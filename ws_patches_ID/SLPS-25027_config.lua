apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Golf Paradise DX (J)(SLPS-25027)
--comment=Widescreen Hack by Arapapa

--Widescreen hack 16:9

eeObj.WriteMem32(0x003C50F0,0x3f400000)
end

emuObj.AddVsyncHook(widescreen)