apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack (16:9) by ElHecht (PAL by Arapapa)

--Widescreen 16:9

--X-Fov
eeObj.WriteMem32(0x00271858,0x3faaaaab)
eeObj.WriteMem32(0x00271864,0x3faaaaab)

--Render fix
eeObj.WriteMem32(0x001808e0,0x3c023f2b)


end

emuObj.AddVsyncHook(widescreen)