apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--16:9
eeObj.WriteMem32(0x0050E568,0x3F19999A)
eeObj.WriteMem32(0x0050E7A8,0x3F19999A)

--21:9
--eeObj.WriteMem32(0x0050E568,0x3EE66666)
--eeObj.WriteMem32(0x0050E7A8,0x3EE66666)

--View Distance
eeObj.WriteMem32(0x0050E598,0x41200000)
end

emuObj.AddVsyncHook(widescreen)