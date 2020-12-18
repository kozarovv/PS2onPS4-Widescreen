apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by Arapapa


--Force turn on Widescreen (Full boot bypassing)
eeObj.WriteMem32(0x004132d8,0x24020002)

--Zoom fix (Internal Widescreen)
eeObj.WriteMem32(0x00500bf0,0x3f9faaab)

--------------------------------------------------/
--Zoom
--eeObj.WriteMem32(0x0010d044,0x3c013f1c)
--eeObj.WriteMem32(0x0010d04c,0x3c013f40)
--eeObj.WriteMem32(0x001b930c,0x3c013ff0)
--eeObj.WriteMem32(0x00500c44,0x3f6da000)
--Y-Fov
--eeObj.WriteMem32(0x00501e48,0x3FE38E2A)

end

emuObj.AddVsyncHook(widescreen)