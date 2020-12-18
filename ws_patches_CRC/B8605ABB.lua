apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Hudson Selection Vol 4 - Takahashi Meijin no Bouken Jima (K) (SLKA-15009)
--comment=Widescreen hack by Arapapa

-- 16:9 (713d8a3f efeeee3e 00000045)
eeObj.WriteMem32(0x006f1c60,0x3F4F5C29)
end

emuObj.AddVsyncHook(widescreen)