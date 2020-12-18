apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by nemesis2000 (pnach by nemesis2000)

--sp
eeObj.WriteMem32(0x003a7ef4,0x3c023f40)
eeObj.WriteMem32(0x003a7f14,0x3c0243d6)

--mp
eeObj.WriteMem32(0x003a8014,0x3c023f40)
eeObj.WriteMem32(0x003a8034,0x3c0243d6)

--menu
eeObj.WriteMem32(0x0053b144,0x3c043f40)
eeObj.WriteMem32(0x0053b150,0x3c0243d6)
end

emuObj.AddVsyncHook(widescreen)