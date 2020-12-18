apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Dynasty Warriors 5 (SLES-53340)
--comment=Widescreen hack by Machiavel Dhy'v (converted from nemesis2000 ntsc-u)
eeObj.WriteMem32(0x00146cc8,0x3c0243d6)
eeObj.WriteMem32(0x0018249c,0x3c023f2b)
eeObj.WriteMem32(0x00146a14,0x3c023e40)
end

emuObj.AddVsyncHook(widescreen)