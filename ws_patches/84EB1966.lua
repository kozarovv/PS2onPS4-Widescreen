apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack by Arapapa

--Widescreen hack 16:9

--X-Fov
eeObj.WriteMem32(0x002da8d4,0x3c013f40)
eeObj.WriteMem32(0x002da8d8,0x44810000)
eeObj.WriteMem32(0x002da8e0,0x4600c602)

--Render fix
eeObj.WriteMem32(0x002843b4,0x3c0143f0)
end

emuObj.AddVsyncHook(widescreen)