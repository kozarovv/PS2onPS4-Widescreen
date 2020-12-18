apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=GetBackers Dakkanya - Dakkandayo! Zenin Shuugou!! (J)(SLPM-62276)
--comment=Widescreen hack  by Arapapa

--Widescreen hack 16:9

--X-Fov
eeObj.WriteMem32(0x0014aa70,0x08040c74)

eeObj.WriteMem32(0x001031d0,0x46000802)
eeObj.WriteMem32(0x001031d4,0x3c013f40)
eeObj.WriteMem32(0x001031d8,0x4481f000)
eeObj.WriteMem32(0x001031dc,0x461e0002)
eeObj.WriteMem32(0x001031e0,0x08052a9d)
end

emuObj.AddVsyncHook(widescreen)