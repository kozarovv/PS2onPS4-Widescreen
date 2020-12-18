apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by Arapapa

--X-Fov
eeObj.WriteMem32(0x0012ba20,0x3c013f40)

--Render fix
eeObj.WriteMem32(0x0012bbf8,0x3c0142d0)
------------------------------/
-- 16:9(0000803f ae47613f 00000045 00000045)  
--eeObj.WriteMem32(0x0045CFA4,0x3f400000)
--eeObj.WriteMem32(0x0045D01C,0x3f400000)
end

emuObj.AddVsyncHook(widescreen)