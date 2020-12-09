apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

--X-Fov
eeObj.WriteMem32(0x004bbd48,0x08134998)

eeObj.WriteMem32(0x004d2660,0x4600b0c3)
eeObj.WriteMem32(0x004d2664,0x3c013f40)
eeObj.WriteMem32(0x004d2668,0x4481f000)
eeObj.WriteMem32(0x004d266c,0x461e18c2)
eeObj.WriteMem32(0x004d2670,0x0812ef53)

--Render fix
eeObj.WriteMem32(0x003d75d4,0x3c013f2b)
end

emuObj.AddVsyncHook(widescreen)