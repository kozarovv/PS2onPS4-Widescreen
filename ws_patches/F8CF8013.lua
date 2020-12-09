apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Hajime no Ippo All-Stars (J)(SLPS-25439)
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

--X-Fov
eeObj.WriteMem32(0x00194888,0x3c023fab)

--Cutscenes
--02080046 4800a0e7 380080c4
eeObj.WriteMem32(0x0013b3a4,0x080af254)
eeObj.WriteMem32(0x002bc950,0x46000802)
eeObj.WriteMem32(0x002bc954,0x3c013f40)
eeObj.WriteMem32(0x002bc958,0x4481f000)
eeObj.WriteMem32(0x002bc95c,0x461e0003)
eeObj.WriteMem32(0x002bc960,0x0804ecea)
end

emuObj.AddVsyncHook(widescreen)