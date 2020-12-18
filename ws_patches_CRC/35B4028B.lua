apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=16:9 widescreen hack

--16:9 widescreen hack by nemesis2000, porting by 99skull
eeObj.WriteMem32(0x00216C60,0x3C013F40)
eeObj.WriteMem32(0x001F69C0,0x3C013F40)
eeObj.WriteMem32(0x0018D408,0x3C0143D5)
eeObj.WriteMem32(0x00200B44,0x3C013F40)
eeObj.WriteMem32(0x00200B48,0x44810000)
eeObj.WriteMem32(0x00200B54,0x46006303)
end

emuObj.AddVsyncHook(widescreen)