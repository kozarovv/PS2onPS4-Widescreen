apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack (16:9) by ElHecht (NTSC-J by Arapapa)

--Widescreen 16:9

--X-Fov
eeObj.WriteMem32(0x0026c418,0x3faaaaab)
eeObj.WriteMem32(0x0026c424,0x3faaaaab)

--Render fix
eeObj.WriteMem32(0x0017ed20,0x3c023f2b)


end

emuObj.AddVsyncHook(widescreen)