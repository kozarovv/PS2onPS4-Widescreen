apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Giants - Citizen Kabuto (U)(SLUS-20178)
--comment=Widescreen hack  (NTSC-U by Arapapa)

--Widescreen hack 16:9

--abaaaa3f e3a59b3c
eeObj.WriteMem32(0x003bad40,0x3fe38e39)
--abaaaa3f 0ad7233d
eeObj.WriteMem32(0x003baef8,0x3fe38e39)
end

emuObj.AddVsyncHook(widescreen)