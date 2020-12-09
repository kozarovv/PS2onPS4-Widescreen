apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Jyuouki - Project Altered Beast (J)(SLPM-65796)
--comment=Widescreen hack  (NTSC-J by Arapapa)

--Widescreen hack 16:9

eeObj.WriteMem32(0x00156be0,0x3c033fe3)
eeObj.WriteMem32(0x00156be8,0x34648e38)
eeObj.WriteMem32(0x005d0210,0x3c033f20)
end

emuObj.AddVsyncHook(widescreen)