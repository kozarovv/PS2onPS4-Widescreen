apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Sky Odyssey (J)(SCPS-15003)
--comment=Widescreen Hack by ElHecht (NTSC-J by Arapapa)

eeObj.WriteMem32(0x00285b90,0x3f400000)
eeObj.WriteMem32(0x0026ea80,0x43e00000)
end

emuObj.AddVsyncHook(widescreen)