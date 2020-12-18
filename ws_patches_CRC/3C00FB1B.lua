apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

--Zoom
--abaaaa3e 8988083e
eeObj.WriteMem32(0x0027c780,0x3fd90000)


--Y-Fov
9d3f013c a4702134
d13f013c 85eb2134 (1st)
eeObj.WriteMem32(0x0010d9b4,0x3c013fd1)
eeObj.WriteMem32(0x0010d9b8,0x3421eb85)
end

emuObj.AddVsyncHook(widescreen)