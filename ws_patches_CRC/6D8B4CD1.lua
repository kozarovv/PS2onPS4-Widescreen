apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by nemesis2000 (pnach by nemesis2000)

--built in widescreen
eeObj.WriteMem32(0x00240C20,0x00000001)
eeObj.WriteMem32(0x00170c8c,0x3c013f80)
eeObj.WriteMem32(0x00170c90,0x00000000)
eeObj.WriteMem32(0x00170cc8,0x00000000)

--both fov+
eeObj.WriteMem32(0x00113f54,0x3c0143c0)
eeObj.WriteMem32(0x00114a70,0x3c0143c0)

--cutscenes black border fix
eeObj.WriteMem32(0x0013e264,0x3c01bf80)
eeObj.WriteMem32(0x0013e26c,0x3c013f80)

--render fix
eeObj.WriteMem32(0x0011339c,0x3c013f40)

--FMV's fix
eeObj.WriteMem32(0x001d4610,0x24097560)
eeObj.WriteMem32(0x001d4618,0x240b1550)
end

emuObj.AddVsyncHook(widescreen)