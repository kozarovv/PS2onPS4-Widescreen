apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by Arapapa

--Widescreen 16:9

--X-Fov
--000080e4 0800a0e7 0c00a0e7 040080e4
eeObj.WriteMem32(0x002ecf40,0x08116114)
eeObj.WriteMem32(0x00458450,0x3c013f40)
eeObj.WriteMem32(0x00458454,0x4481f000)
eeObj.WriteMem32(0x00458458,0x461e0783)
eeObj.WriteMem32(0x0045845c,0xe49e0000)
eeObj.WriteMem32(0x00458460,0x080bb3d1)
end

emuObj.AddVsyncHook(widescreen)