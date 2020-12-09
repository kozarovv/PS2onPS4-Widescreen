apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

--X-Fov
--403f013c 00888144 02b30c46
eeObj.WriteMem32(0x001876e4,0x3c013f10)

--403f013c 00888144 03840146
eeObj.WriteMem32(0x0018ba7c,0x3c013f10)
end

emuObj.AddVsyncHook(widescreen)