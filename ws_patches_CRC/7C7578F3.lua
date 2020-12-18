apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by nemesis2000 (pnach by nemesis2000)

eeObj.WriteMem32(0x001a50d0,0x3c013f40)
eeObj.WriteMem32(0x001a50d4,0x44810000)
eeObj.WriteMem32(0x001a50dc,0x46006b43)

eeObj.WriteMem32(0x0015632c,0x3c023fe3)
eeObj.WriteMem32(0x00156330,0x34438e38)

--black border fix
eeObj.WriteMem32(0x001d8460,0x24040001)
end

emuObj.AddVsyncHook(widescreen)