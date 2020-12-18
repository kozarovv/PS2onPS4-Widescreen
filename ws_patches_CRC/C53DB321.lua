apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Fushigi no Kuni no Alice (J)(SLPM-62341)
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

eeObj.WriteMem32(0x001044f4,0x3c013f40)
eeObj.WriteMem32(0x001044f8,0x44810000)
eeObj.WriteMem32(0x00104500,0x4600c602)
end

emuObj.AddVsyncHook(widescreen)