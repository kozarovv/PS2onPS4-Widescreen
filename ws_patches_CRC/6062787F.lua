apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack
eeObj.WriteMem32(0x00102354,0x3c013f66)
eeObj.WriteMem32(0x00102358,0x34216666)
eeObj.WriteMem32(0x001cb818,0x3c013f66)
eeObj.WriteMem32(0x001cb81c,0x34216666)
--eeObj.WriteMem32(0x00101f58,0x3c013f66)
--eeObj.WriteMem32(0x00101f5c,0x34216666)
--993f013c 9a992134 00008144 cc3f013c to 663f013c 66662134 00008144 cc3f013c gameplay
--993f013c 9a992134 00608144 f00040c4 to 663f013c 66662134 00608144 f00040c4  menu
end

emuObj.AddVsyncHook(widescreen)