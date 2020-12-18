apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Crazy Taxi (NTSC-J)(SLPM-62102)
--comment=Widescreen hack by No.47 (NTSC-J by Arapapa)

--Widescreen hack 16:9
--713daa3f 9a99593f 0ad7233c
eeObj.WriteMem32(0x0042AB48,0x3FE2FC93)
end

emuObj.AddVsyncHook(widescreen)