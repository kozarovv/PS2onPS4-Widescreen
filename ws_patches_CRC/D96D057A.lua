apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Seaman - Kindan no Pet - Gaze Hakushi no Jikken Shima (Limited Edition w.Controller) (J)(SLPS-25064)
--comment=Widescreen hack by Arapapa

--Widescreen 16:9

--Matrix hack
eeObj.WriteMem32(0x001027cc,0x3c013f40)
eeObj.WriteMem32(0x001027d0,0x44810000)
eeObj.WriteMem32(0x001027d8,0x4600c602)

--Render fix
eeObj.WriteMem32(0x00247da4,0x3c023fab)
end

emuObj.AddVsyncHook(widescreen)