apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by ElHecht

-- 16:9 alternate gameplay value by nemesis2000
eeObj.WriteMem32(0x003ae394,0x08101a0c)
eeObj.WriteMem32(0x003ae398,0x00000000)

eeObj.WriteMem32(0x00406830,0x3c013f40)
eeObj.WriteMem32(0x00406834,0x4481f000)
eeObj.WriteMem32(0x00406838,0x46070202)
eeObj.WriteMem32(0x0040683c,0x24430050)
eeObj.WriteMem32(0x00406840,0x461e4202)
eeObj.WriteMem32(0x00406844,0x080eb8e6)

-- renderfix and inventory fix
eeObj.WriteMem32(0x001dcedc,0x3c034120)
eeObj.WriteMem32(0x001c5564,0x3c023faa)

-- FMV's fix by nemesis2000
eeObj.WriteMem32(0x0031b178,0x240670f0)
eeObj.WriteMem32(0x0031b1e0,0x24058f00)
end

emuObj.AddVsyncHook(widescreen)