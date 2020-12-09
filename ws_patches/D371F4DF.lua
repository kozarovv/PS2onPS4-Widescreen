apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Brothers in Arms: Earned in Blood (SLUS-21310)
--comment=Widescreen hack by nemesis2000 (pnach by nemesis2000)

--gameplay
eeObj.WriteMem32(0x002f114c,0x3c023f40)

--menu font fix
eeObj.WriteMem32(0x003c58ec,0x3c033f40)
eeObj.WriteMem32(0x003c58f4,0x3c033f80)
eeObj.WriteMem32(0x003c58f8,0x44830800)
eeObj.WriteMem32(0x003c58fc,0xae63010c)
eeObj.WriteMem32(0x003c5900,0xc6600108)
eeObj.WriteMem32(0x003c5904,0x46010036)
end

emuObj.AddVsyncHook(widescreen)