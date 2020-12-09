apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Simple 2000 Series Vol. 14 - The Billiard
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

--X-Fov
eeObj.WriteMem32(0x008ac548,0x08231f78)
eeObj.WriteMem32(0x008c7de0,0x3c1b3f40)
eeObj.WriteMem32(0x008c7de4,0x449bb800)
eeObj.WriteMem32(0x008c7de8,0x4617c602)
eeObj.WriteMem32(0x008c7dec,0xe6180000)
eeObj.WriteMem32(0x008c7df0,0x0822b153)
end

emuObj.AddVsyncHook(widescreen)