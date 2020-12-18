apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by Arapapa and nemesis2000

--Widescreen hack 16:9
--X-Fov
eeObj.WriteMem32(0x00171ac8,0x3c013f40)

--Black border fix for cutscenes by nemesis2000
--eeObj.WriteMem32(0x0013ef0c,0x3c01bf80)
--eeObj.WriteMem32(0x0013ef14,0x3c013f80)

--FMV Fix by nemesis2000
eeObj.WriteMem32(0x001d3738,0x24097604)
eeObj.WriteMem32(0x001d3740,0x240b1400)
end

emuObj.AddVsyncHook(widescreen)