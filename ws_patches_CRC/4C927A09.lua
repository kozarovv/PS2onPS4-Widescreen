apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack by Arapapa)

--16:9 (0000803f 6666e63e)
eeObj.WriteMem32(0x0031A120,0x3F400000)
end

emuObj.AddVsyncHook(widescreen)