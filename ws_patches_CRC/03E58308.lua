apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by nemesis2000 (pnach by Arapapa)

--gameplay
eeObj.WriteMem32(0x003058cc,0x3c023f40)

--menu font fix
eeObj.WriteMem32(0x003e57ac,0x3c033f40)
eeObj.WriteMem32(0x003e57b4,0x3c033f80)
eeObj.WriteMem32(0x003e57b8,0x44830800)
eeObj.WriteMem32(0x003e57bc,0xae630108)
eeObj.WriteMem32(0x003e57c0,0xc6600104)
eeObj.WriteMem32(0x003e57c4,0x46010036)
end

emuObj.AddVsyncHook(widescreen)