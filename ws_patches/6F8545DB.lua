apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by nemesis2000 (pnach by nemesis2000)

--widescreen
eeObj.WriteMem32(0x001146c8,0x3c013f40)
eeObj.WriteMem32(0x001146cc,0x44813800)
eeObj.WriteMem32(0x001146d8,0x46071082)
eeObj.WriteMem32(0x001146dc,0xc78780dc)

--render fix
eeObj.WriteMem32(0x001141a4,0x240302ab)
eeObj.WriteMem32(0x00554790,0x44800000)

--black borders fix
eeObj.WriteMem32(0x00113030,0x3c010000)
end

emuObj.AddVsyncHook(widescreen)