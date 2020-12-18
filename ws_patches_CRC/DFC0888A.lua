apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Brothers in Arms: Road to Hill 30 (SLUS-21163)
--comment=Widescreen hack by nemesis2000 (pnach by nemesis2000)

--gameplay
eeObj.WriteMem32(0x00304f5c,0x3c023f40)

--menu font fix
eeObj.WriteMem32(0x003e4e3c,0x3c033f40)
eeObj.WriteMem32(0x003e4e44,0x3c033f80)
eeObj.WriteMem32(0x003e4e48,0x44830800)
eeObj.WriteMem32(0x003e4e4c,0xae630108)
eeObj.WriteMem32(0x003e4e50,0xc6600104)
eeObj.WriteMem32(0x003e4e54,0x46010036)
end

emuObj.AddVsyncHook(widescreen)