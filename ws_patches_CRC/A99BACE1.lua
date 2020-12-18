apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Worms Forts - Under Siege (U)(SLUS-21093)
--comment=Widescreen Hack by Arapapa

--Widescreen hack 16:9

--Zoom
--8e3c013c 36fa2134 00008144 0000acc7
--b13c013c 00402134  00008144 0000acc7
eeObj.WriteMem32(0x001bbb40,0x3c013cb1)
eeObj.WriteMem32(0x001bbb44,0x34214000)

--Y-Fov
eeObj.WriteMem32(0x001bbb5c,0x3c013f10)
end

emuObj.AddVsyncHook(widescreen)