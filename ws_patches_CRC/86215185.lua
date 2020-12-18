apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by Arapapa
 
--Widescreen 16:9

--X-Fov
--900044ac 4c00a28f
eeObj.WriteMem32(0x001c0220,0x080d9f68)

eeObj.WriteMem32(0x00367da0,0x3c013f40)
eeObj.WriteMem32(0x00367da4,0xac410090)
eeObj.WriteMem32(0x00367da8,0x08070089)
end

emuObj.AddVsyncHook(widescreen)