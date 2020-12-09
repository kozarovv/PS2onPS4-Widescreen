apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Chaos Legion (SLUS-20695)
--comment=Widescreen hack by nemesis2000 (pnach by nemesis2000)
eeObj.WriteMem32(0x00242f4c,0x3c013f40)
eeObj.WriteMem32(0x00242f5c,0x4481d800)
eeObj.WriteMem32(0x00242f60,0x460fdec2)
eeObj.WriteMem32(0x00243064,0x3c0243ab)
eeObj.WriteMem32(0x00228064,0x3c023fab)

--FMV's fix
eeObj.WriteMem32(0x00325684,0x3c026fb0)
eeObj.WriteMem32(0x00325594,0x241e77d0)
end

emuObj.AddVsyncHook(widescreen)