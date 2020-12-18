apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack by nemesis2000 (NTSC-J by Arapapa)

--Widescreen hack 16:9

eeObj.WriteMem32(0x00305a3c,0x3c023f40)

eeObj.WriteMem32(0x003e593c,0x3c033f40)
eeObj.WriteMem32(0x003e5944,0x3c033f80)
eeObj.WriteMem32(0x003e5948,0x44830800)
eeObj.WriteMem32(0x003e594c,0xae630108)
eeObj.WriteMem32(0x003e5950,0xc6600104)
eeObj.WriteMem32(0x003e5954,0x46010036)
end

emuObj.AddVsyncHook(widescreen)