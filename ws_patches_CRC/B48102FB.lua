apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Waku Waku Volley 2 [NTSC-J] [SLPM-62285]
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

eeObj.WriteMem32(0x01534544,0x3f400000)
end

emuObj.AddVsyncHook(widescreen)