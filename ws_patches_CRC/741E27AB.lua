apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by Arapapa

--Widescreen 16:9

--X-Fov
--000080e4 0800a0e7 0c00a0e7 040080e4
eeObj.WriteMem32(0x002edc30,0x08116108)
eeObj.WriteMem32(0x00458420,0x3c013f40)
eeObj.WriteMem32(0x00458424,0x4481f000)
eeObj.WriteMem32(0x00458428,0x461e0783)
eeObj.WriteMem32(0x0045842c,0xe49e0000)
eeObj.WriteMem32(0x00458430,0x080bb70d)



end

emuObj.AddVsyncHook(widescreen)