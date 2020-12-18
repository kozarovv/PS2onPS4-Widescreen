apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment= Widescreen Hack by Arapapa

--Widescreen hack 16:9

--abaaaa3f 00006042
eeObj.WriteMem32(0x007d2e14,0x3fe38e38)

--abaaaa3e 8988083e (1st)
eeObj.WriteMem32(0x008a48c0,0x400ccccd)
end

emuObj.AddVsyncHook(widescreen)