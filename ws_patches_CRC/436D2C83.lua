apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by Arapapa 

--Widescreen hack 16:9

--abaaaa3f 000080bf 00007a44
eeObj.WriteMem32(0x00694e0c,0x3fe38e3e)
end

emuObj.AddVsyncHook(widescreen)