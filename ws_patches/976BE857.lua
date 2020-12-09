apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
shin sangoukumusou 3 xtreme legends

--WIDESCREEN
eeObj.WriteMem32(0x00139920,0x3c0243d6)
eeObj.WriteMem32(0x0018eb90,0x3c023f2b)
end

emuObj.AddVsyncHook(widescreen)