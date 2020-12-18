apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Evangelion - Jo (J)(SLPS-25932)
--comment=Widescreen Hack by Arapapa

--Widescreen hack 16:9

--0000803f 000080bf 0000803f 00003543
eeObj.WriteMem32(0x0041B328,0x3F400000)
end

emuObj.AddVsyncHook(widescreen)