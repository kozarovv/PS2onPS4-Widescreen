apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Victorious Boxers 2 - Fighting Spirit (U)(SLUS-21204)
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

--X-Fov (in Squred Ring)
eeObj.WriteMem32(0x0019291c,0x3c063fab)

--Cutscenes
--02080046 4800a0e7 380080c4
eeObj.WriteMem32(0x0013b784,0x080aed94)
eeObj.WriteMem32(0x002bb650,0x46000802)
eeObj.WriteMem32(0x002bb654,0x3c013f40)
eeObj.WriteMem32(0x002bb658,0x4481f000)
eeObj.WriteMem32(0x002bb65c,0x461e0003)
eeObj.WriteMem32(0x002bb660,0x0804ede2)

------------------------------------------------/
--Y-Fov (Event In Squred Ring)
--eeObj.WriteMem32(0x00195308,0x3c063fab)
--eeObj.WriteMem32(0x00195318,0x3c074455)

--Zoom (All Event)
--eeObj.WriteMem32(0x0013b754,0x3c023f40)

--Y-Fov (Event)
--eeObj.WriteMem32(0x001b4d8c,0x3c074455)
--eeObj.WriteMem32(0x001beeac,0x3c074455)
--eeObj.WriteMem32(0x001c0620,0x3c024455)
--eeObj.WriteMem32(0x002af75c,0x3c074455)
--eeObj.WriteMem32(0x002b9548,0x3c074455)
--eeObj.WriteMem32(0x002bae1c,0x3c074455)
--eeObj.WriteMem32(0x002baf14,0x3c024455)
--eeObj.WriteMem32(0x002baf48,0x3c024455)

end

emuObj.AddVsyncHook(widescreen)