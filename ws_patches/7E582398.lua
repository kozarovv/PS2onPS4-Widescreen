apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Digimon Data Squad

-- 16:9 hack
eeObj.WriteMem32(0x0033A9C0,0x3FAAAAAA)
eeObj.WriteMem32(0x0033A9D0,0x3F400000)
end

emuObj.AddVsyncHook(widescreen)