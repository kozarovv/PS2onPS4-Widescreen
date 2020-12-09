apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gameplay (based on pavachan elf hack)
eeObj.WriteMem32(0x00311810,0x3c013fe3)
eeObj.WriteMem32(0x00311814,0x34218e38)

--black border fix by nemesis2000
--eeObj.WriteMem32(0x002d24cc,0x00000000)

--FMV's fix by nemesis2000
eeObj.WriteMem32(0x002e9ff0,0x240575e0)
eeObj.WriteMem32(0x002ea008,0x240a1440)
end

emuObj.AddVsyncHook(widescreen)