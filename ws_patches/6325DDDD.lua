apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--Widescreen hack 16:9

--X-Fov
--803f023c 40000426
eeObj.WriteMem32(0x00267f04,0x3c023f40)

--Render fix
eeObj.WriteMem32(0x007BEDB0,0x44bff400)
eeObj.WriteMem32(0x007BEF70,0x443FE7FF)
eeObj.WriteMem32(0x007BF130,0x443FE7FF)
end

emuObj.AddVsyncHook(widescreen)