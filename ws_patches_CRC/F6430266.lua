apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Wild Arms Alter Code F (J) (SCPS_170.02)
--comment=Widescreen hack by nemesis2000 (pnach by Arapapa)

eeObj.WriteMem32(0x00118ba0,0x3c024455)
eeObj.WriteMem32(0x00118e4c,0x3c023f40)
eeObj.WriteMem32(0x00118f18,0x3c023f40)
eeObj.WriteMem32(0x00118fc4,0x3c033f40)
eeObj.WriteMem32(0x00118FD8,0x3c034505)
eeObj.WriteMem32(0x00118ff4,0x3c023f40)
eeObj.WriteMem32(0x00119008,0x3c0243d9)
eeObj.WriteMem32(0x00119250,0x3c064455)
end

emuObj.AddVsyncHook(widescreen)