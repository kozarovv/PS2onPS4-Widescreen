apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=GetBackers Dakkanya - Ubawareta Mugenjou (J)(SLPM-62186)
--comment=Widescreen hack  by Arapapa

--Widescreen hack 16:9

--X-Fov
--02080046 3000a38f (1st)
eeObj.WriteMem32(0x00144a30,0x08042f64)

eeObj.WriteMem32(0x0010bd90,0x46000802)
eeObj.WriteMem32(0x0010bd94,0x3c013f40)
eeObj.WriteMem32(0x0010bd98,0x4481f000)
eeObj.WriteMem32(0x0010bd9C,0x461e0002)
eeObj.WriteMem32(0x0010bdA0,0x0805128d)

--X-Fov (2D characters) 
eeObj.WriteMem32(0x00183334,0x3c024140)
eeObj.WriteMem32(0x00183358,0x3c024140)

--Right 2D Characters X-Position
eeObj.WriteMem32(0x00183584,0x3c024198)
end

emuObj.AddVsyncHook(widescreen)