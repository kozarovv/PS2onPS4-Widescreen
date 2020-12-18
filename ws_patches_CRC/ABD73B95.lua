apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Simple 2000 Series Ultimate Vol.06 - Love Upper Boxing (J)(SLPM-62296)
--comment=Widescreen Hack by Arapapa

--Widescreen hack 16:9

--Matrix hack
eeObj.WriteMem32(0x001784dc,0x3c013f40)
eeObj.WriteMem32(0x001784e0,0x44810000)
eeObj.WriteMem32(0x001784e8,0x4600c602)
end

emuObj.AddVsyncHook(widescreen)