apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Disaster Report (K) (SCPS-56012)
--comment=Widescreen Hack (pnach by Arapapa)

--16:9 gameplay
--803f023c 00788344 3500013c
eeObj.WriteMem32(0x0013d6f8,0x3c023f40)

--803f023c 00888244 2600073c 0045033c
eeObj.WriteMem32(0x0013df54,0x3c023f40)

--803f023c 00888244 2600073c 0045033c
eeObj.WriteMem32(0x0013e0d8,0x3c023f40)

-- render fix(0000a043 00007043 cdcc4c3e)
eeObj.WriteMem32(0x0025c320,0x43e00000)
eeObj.WriteMem32(0x0025c330,0x43e00000)
end

emuObj.AddVsyncHook(widescreen)