apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=widescreen hack by nemesis2000 (pnach by nemesis2000)

--widescreen
eeObj.WriteMem32(0x00115bd0,0x3c023f40)
eeObj.WriteMem32(0x00115be0,0x3c023f40)
eeObj.WriteMem32(0x001159b4,0x3c023f40)
eeObj.WriteMem32(0x0011603c,0x3c023f40)
eeObj.WriteMem32(0x002639cc,0x3c023f40)

--render fix
eeObj.WriteMem32(0x0011478c,0x3c033fc0)

--bb fix
eeObj.WriteMem32(0x001a93cc,0x24079400)

--dialog portraits fix
eeObj.WriteMem32(0x0011ae00,0x240501b0)
eeObj.WriteMem32(0x0011ae30,0x240501b0)
eeObj.WriteMem32(0x0012ac98,0x25850750)
end

emuObj.AddVsyncHook(widescreen)