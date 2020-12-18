apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by nemesis2000 and Arapapa

--gameplay
eeObj.WriteMem32(0x003f35ac,0x3fe38e38)
eeObj.WriteMem32(0x002bf0b0,0x3c023fe3)
eeObj.WriteMem32(0x002bf0b8,0x34428e38)

--Re-play
--abaaaa3f 00000000 00000000 80020000 (2nd)
eeObj.WriteMem32(0x003f36ec,0x3fe38e38)
end

emuObj.AddVsyncHook(widescreen)