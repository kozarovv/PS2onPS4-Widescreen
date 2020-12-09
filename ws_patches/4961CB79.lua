apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Sengoku Basara 2

--wide screen hack by 99skull
--wide 16:9
eeObj.WriteMem32(0x00271A2C,0x3C013F40)
eeObj.WriteMem32(0x00271A30,0x44810000)
eeObj.WriteMem32(0x00271A38,0x4600C602)
--render fix
eeObj.WriteMem32(0x001F37E8,0x3C013F19)
eeObj.WriteMem32(0x001F37EC,0x3421999A)
end

emuObj.AddVsyncHook(widescreen)