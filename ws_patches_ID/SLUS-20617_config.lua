apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Dynasty Warriors 3: Xtreme Legends (U)(SLUS-20617)
--comment=Widescreen Hack (16:9) by ElHecht (NTSC-U by Arapapa)

--Widescreen 16:9

--X-Fov
eeObj.WriteMem32(0x00282f58,0x3faaaaab)
eeObj.WriteMem32(0x00282f64,0x3faaaaab)

--Render fix
eeObj.WriteMem32(0x0017f9b0,0x3c023f2b)


end

emuObj.AddVsyncHook(widescreen)