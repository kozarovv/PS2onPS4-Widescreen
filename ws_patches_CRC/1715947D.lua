apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by Arapapa

--Wide Screen 16:9
eeObj.WriteMem32(0x00102c6c,0x3c013f40)
eeObj.WriteMem32(0x00102c70,0x44810000)
eeObj.WriteMem32(0x00102c78,0x4600c602)


end

emuObj.AddVsyncHook(widescreen)