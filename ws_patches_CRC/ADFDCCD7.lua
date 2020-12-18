apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=American Chopper 2 - Full Throttle (U)(SLUS-21288)
--comment=Widescreen Hack by Arapapa

--Widescreen hack 16:9

eeObj.WriteMem32(0x0015a8c0,0x080f4eb8)

eeObj.WriteMem32(0x003d3ae0,0x460c0082)
eeObj.WriteMem32(0x003d3ae4,0x3c013fa0)
eeObj.WriteMem32(0x003d3ae8,0x3421aaaa)
eeObj.WriteMem32(0x003d3aeC,0x4481f000)
eeObj.WriteMem32(0x003d3aF0,0x461e1082)
eeObj.WriteMem32(0x003d3af4,0x08056a31)
end

emuObj.AddVsyncHook(widescreen)