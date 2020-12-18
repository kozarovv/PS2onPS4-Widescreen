apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Dynasty Warriors 4 (PAL-FR) (SLES-51662)
--comment=Widescreen hack by Machiavel Dhy'v converted from nemesis2000 NTSC-U
eeObj.WriteMem32(0x00137110,0x3c0243d6)
eeObj.WriteMem32(0x00183d30,0x3c023f2b)
end

emuObj.AddVsyncHook(widescreen)