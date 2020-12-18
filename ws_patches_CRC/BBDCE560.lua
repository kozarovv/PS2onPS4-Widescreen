apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=MTV Celebrity Deathmatch (E)(SLES-51189)
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

--02031846 07000046 003f023c
eeObj.WriteMem32(0x00211768,0x3c013faa)
eeObj.WriteMem32(0x0021176c,0x3421aaab)
eeObj.WriteMem32(0x00211774,0x4481f000)
eeObj.WriteMem32(0x00211780,0x461ec602)
end

emuObj.AddVsyncHook(widescreen)