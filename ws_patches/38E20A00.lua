apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by Arapapa
 
--Widescreen 16:9

--X-Fov
eeObj.WriteMem32(0x00210e3c,0x08081008)

eeObj.WriteMem32(0x00204020,0xc7a00024)
eeObj.WriteMem32(0x00204024,0x3C013F40)
eeObj.WriteMem32(0x00204028,0x4481F000)
eeObj.WriteMem32(0x0020402C,0x461e0002)
eeObj.WriteMem32(0x00204030,0x08084390)
end

emuObj.AddVsyncHook(widescreen)