apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

--X-Fov
--000018e6 280000ae 00000000 
eeObj.WriteMem32(0x008ac5c0,0x08231fa4)
eeObj.WriteMem32(0x008c7e90,0x3c1b3f40)
eeObj.WriteMem32(0x008c7e94,0x449bb800)
eeObj.WriteMem32(0x008c7e98,0x4617c602)
eeObj.WriteMem32(0x008c7e9c,0xe6180000)
eeObj.WriteMem32(0x008c7ea0,0x0822b171)
end

emuObj.AddVsyncHook(widescreen)