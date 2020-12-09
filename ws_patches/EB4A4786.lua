apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Wild Arms Advanced 3rd  [NTSC-J] (SCPS-15024) 
--comment=Widescreen hack by nemesis2000 (pnach by Little Ginat)

--widescreen
eeObj.WriteMem32(0x00115c90,0x3c023f40)
eeObj.WriteMem32(0x00115ca0,0x3c023f40)
eeObj.WriteMem32(0x00115a74,0x3c023f40)
eeObj.WriteMem32(0x001160fc,0x3c023f40)
eeObj.WriteMem32(0x00263c5c,0x3c023f40)

--render fix
eeObj.WriteMem32(0x0011484c,0x3c033fc0)

--black borders fix
eeObj.WriteMem32(0x001a962c,0x24079400)

--dialog portraits fix
eeObj.WriteMem32(0x0011b150,0x240501b0)
eeObj.WriteMem32(0x0011b180,0x240501b0)
eeObj.WriteMem32(0x0012ad38,0x25850750)
end

emuObj.AddVsyncHook(widescreen)