apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by Arapapa and nemesis2000

--Widescreen hack 16:9

--X-Fov
--803f013c 00108144 2800b5e7 (1st)
eeObj.WriteMem32(0x00171918,0x3c013f40)

--black border fix for cutscenes by nemesis2000
--eeObj.WriteMem32(0x0013e504,0x3c01bf80)
--eeObj.WriteMem32(0x0013e50c,0x3c013f80)
 
--FMV Fix by nemesis2000
eeObj.WriteMem32(0x001d3738,0x24097604)
eeObj.WriteMem32(0x001d3740,0x240b1400)
end

emuObj.AddVsyncHook(widescreen)