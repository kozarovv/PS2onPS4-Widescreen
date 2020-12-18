apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Summoner 2 (NTSC-U)
--
-- 16:9
eeObj.WriteMem32(0x0088F668,0x3F100000)
eeObj.WriteMem32(0x002C0580,0x3FA28F5C)
end

emuObj.AddVsyncHook(widescreen)