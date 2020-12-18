apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen fix by nemesis2000 (pnach NTSC-J by Arapapa)

--widescreen fix
eeObj.WriteMem32(0x003cf4cc,0x441CF7AE)
end

emuObj.AddVsyncHook(widescreen)