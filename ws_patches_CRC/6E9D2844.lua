apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack by Arapapa

--Widescreen hack 16:9

--X-Fov  
eeObj.WriteMem32(0x0017eb5c,0x3c013f40)
eeObj.WriteMem32(0x0018b860,0x3c013f40)
eeObj.WriteMem32(0x001af78c,0x3c013f40)
eeObj.WriteMem32(0x001afa00,0x3c013f40)
eeObj.WriteMem32(0x001afb6c,0x3c013f40)


--Render Fix
eeObj.WriteMem32(0x001a8e58,0x3c013ff0)
eeObj.WriteMem32(0x001a8e5c,0x34210000)
eeObj.WriteMem32(0x001aa918,0x3c013ff0)
eeObj.WriteMem32(0x001aa91c,0x34210000)
end

emuObj.AddVsyncHook(widescreen)