apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack by Parotaku

-- 16:9
eeObj.WriteMem32(0x0039f28c,0x3c013f40)
eeObj.WriteMem32(0x0039f298,0x44810000)
eeObj.WriteMem32(0x0039f29c,0x4600c602)
end

emuObj.AddVsyncHook(widescreen)