apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Victorious Boxers 2: Fighting Spirit [PAL] (SLES_533.38)
--comment=Widescreen hack by El_Patas

--X-FOV (In Squared Ring)
eeObj.WriteMem32(0x001939DC,0x3C063FAB)

--Cutscenes
--02080046 4800a0e7 380080c4
eeObj.WriteMem32(0x0013b8a4,0x080babbc)
eeObj.WriteMem32(0x002eaef0,0x46000802)
eeObj.WriteMem32(0x002eaef4,0x3c013f40)
eeObj.WriteMem32(0x002eaef8,0x4481f000)
eeObj.WriteMem32(0x002eaefc,0x461e0003)
eeObj.WriteMem32(0x002eaf00,0x0804ee2a)

end

emuObj.AddVsyncHook(widescreen)