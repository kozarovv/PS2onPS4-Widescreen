apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

--X-Fov
eeObj.WriteMem32(0x0010442c,0x3c013f40)
eeObj.WriteMem32(0x00104430,0x44810000)
eeObj.WriteMem32(0x00104438,0x4600c602)

--Render fix
eeObj.WriteMem32(0x001ef25c,0x3c023fab)
end

emuObj.AddVsyncHook(widescreen)