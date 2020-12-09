apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack by Arapapa

--Widescreen hack 16:9

--X-Fov
eeObj.WriteMem32(0x00166a14,0x3c013f40)
eeObj.WriteMem32(0x00166a18,0x44810000)
eeObj.WriteMem32(0x00166a20,0x4600c602)


end

emuObj.AddVsyncHook(widescreen)