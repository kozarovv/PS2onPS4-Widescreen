apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by Arapapa

--Widescreen 16:9

eeObj.WriteMem32(0x001055e4,0x3c013f40)
eeObj.WriteMem32(0x001055e8,0x44810000)
eeObj.WriteMem32(0x001055f0,0x4600c602)


end

emuObj.AddVsyncHook(widescreen)