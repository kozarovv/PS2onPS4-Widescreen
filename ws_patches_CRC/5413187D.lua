apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

--X-Fov
eeObj.WriteMem32(0x0020f9f4,0x3c013f40)
eeObj.WriteMem32(0x0020fa00,0x4481f000)
eeObj.WriteMem32(0x0020fa04,0x460d8403)
eeObj.WriteMem32(0x0020fa08,0x461e8402)
end

emuObj.AddVsyncHook(widescreen)