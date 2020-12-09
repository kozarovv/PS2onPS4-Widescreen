apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack by Arapapa

--Widescreen hack 16:9

--X-Fov
--803f013c 00088144 60654224
eeObj.WriteMem32(0x003202dc,0x3c013fab)

----------------------/
--0000803F 0000803F 00000000 00000000 00002044 0000E043
--eeObj.WriteMem32(0x007F728C,0x3FAAAAAB)

--Zoom
--eeObj.WriteMem32(0x0013dee4,0x3c013f40)

--Y-Fov
--eeObj.WriteMem32(0x00320728,0x3c013f40)
end

emuObj.AddVsyncHook(widescreen)