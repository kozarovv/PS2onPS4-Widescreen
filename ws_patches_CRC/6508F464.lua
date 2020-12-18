apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by Arapapa
 
--Widescreen 16:9

--X-Fov
--700000c6 0400028e (1st)
eeObj.WriteMem32(0x00266bf4,0x080bf0d8)
eeObj.WriteMem32(0x002fc360,0xc6000070)
eeObj.WriteMem32(0x002fc364,0x3c013f40)
eeObj.WriteMem32(0x002fc368,0x4481f000)
eeObj.WriteMem32(0x002fc36c,0x461e0002)
eeObj.WriteMem32(0x002fc370,0x08099afe)

end

emuObj.AddVsyncHook(widescreen)