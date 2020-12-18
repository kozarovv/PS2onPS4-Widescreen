apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Sengoku Basara 2 Heroes(SLPM_668.48)
--comment=Sengoku Basara 2 Heroes

--wide screen hack 16:9
--wide 16:9
eeObj.WriteMem32(0x00290B0C,0x3C013F40)
eeObj.WriteMem32(0x00290B10,0x44810000)
eeObj.WriteMem32(0x00290B18,0x4600C602)
--render fix
eeObj.WriteMem32(0x0010D5C4,0x3C013F19)
eeObj.WriteMem32(0x0010D5C8,0x3421999A)
end

emuObj.AddVsyncHook(widescreen)