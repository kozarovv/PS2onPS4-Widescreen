apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack 

--Gameplay
eeObj.WriteMem32(0x0015c9f0,0x3c073f40)
eeObj.WriteMem32(0x001dd0d0,0x3c033f40)

--Gameplay HUD by VIRGIN KLM 
eeObj.WriteMem32(0x00336000,0x3F400000)
eeObj.WriteMem32(0x00336030,0x00000210)
eeObj.WriteMem32(0x00336048,0x3F400000)
eeObj.WriteMem32(0x00336108,0x00000200)
eeObj.WriteMem32(0x00336120,0x3F400000)
eeObj.WriteMem32(0x00336150,0x0000022e)
eeObj.WriteMem32(0x00336168,0x3F400000)
eeObj.WriteMem32(0x00336198,0x000001F5)
eeObj.WriteMem32(0x003361B0,0x3F400000)
eeObj.WriteMem32(0x003361E0,0x00000208)
eeObj.WriteMem32(0x003361F8,0x3F400000)
eeObj.WriteMem32(0x00336228,0x0000021b)
eeObj.WriteMem32(0x00336240,0x3F400000)
end

emuObj.AddVsyncHook(widescreen)