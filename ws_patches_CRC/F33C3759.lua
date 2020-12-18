apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Beat Down - Fists of Vengeance (J) (SLPM_66181)
--comment=Widescreen Hack (16:9) by ElHecht (pnach NTSC-J by Arapapa)

--16:9 (42081546 43080046 00000000 00008244 00000000(*) 030b0046 00000000 00000000(*) da95040c 00000000(*))
eeObj.WriteMem32(0x00376fb8,0x3c013f40)
eeObj.WriteMem32(0x00376fc4,0x4481f000)
eeObj.WriteMem32(0x00376fcc,0x461ea503)
end

emuObj.AddVsyncHook(widescreen)