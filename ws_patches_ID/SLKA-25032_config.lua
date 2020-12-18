apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Enter the Matrix (SLKA_25032) Ver. 2.0
--comment=Widescreen hack by nemesis2000 (NTSC-K by Arapapa)

--built-in widescreen
--d00b74a2 d00b60a2
eeObj.WriteMem32(0x001ce30c,0xa2740bcc)
end

emuObj.AddVsyncHook(widescreen)