apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Virtua Fighter 4 - Evolution (J)(SLPM-65270)
--comment=Widescreen hack by ElHecht (NTSC-J by Arapapa)

-- 16:9
eeObj.WriteMem32(0x002fb184,0x3c194455)
eeObj.WriteMem32(0x002fb18c,0x37395555)
eeObj.WriteMem32(0x002fb1a4,0x44990800)
eeObj.WriteMem32(0x00214918,0x3c024456)
end

emuObj.AddVsyncHook(widescreen)