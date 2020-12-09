apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen fix by nemesis2000 (NTSC-J by Arapapa)

--widescreen fix
eeObj.WriteMem32(0x00440ba8,0x43D638F3)
eeObj.WriteMem32(0x00440baC,0x43EB7385)
end

emuObj.AddVsyncHook(widescreen)