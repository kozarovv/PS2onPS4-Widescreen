apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment= Widescreen Hack by sergx12 (pnach by Arapapa)

--gameplay by sergx12 (0000a2af 0045033c 803f023c e0000426)
eeObj.WriteMem32(0x001ffd98,0x3c023f40)

--FMV's fix by nemesis2000 (08004634 0079023c d000a427, 25306200 00870234 d000a427)
eeObj.WriteMem32(0x001f9f78,0x3c027660)
eeObj.WriteMem32(0x001f9fc4,0x340289a0)
end

emuObj.AddVsyncHook(widescreen)