apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Kingdom Hearts (NTSC-J)
--comment=Widescreen patch by nemesis2000 (pnach by nemesis2000 )
eeObj.WriteMem32(0x0011043c,0x3c0143d6)
eeObj.WriteMem32(0x00110930,0x3c013f19)
eeObj.WriteMem32(0x00110934,0x3421999a)

--FMV's fix
eeObj.WriteMem32(0x002a2e98,0x70007000)
eeObj.WriteMem32(0x0010612c,0x3c071900)

--black border fix
eeObj.WriteMem32(0x00104234,0x00000000)
eeObj.WriteMem32(0x00104374,0x00000000)
end

emuObj.AddVsyncHook(widescreen)