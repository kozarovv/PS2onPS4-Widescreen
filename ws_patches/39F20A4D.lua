apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

--0000803f 0000803f 30afba00 d052bc00
eeObj.WriteMem32(0x00BAA45C,0x3faaaaab)

--00 00 80 3F 00 00 80 3F D0 E7 BC 00 60 8B BE 00
eeObj.WriteMem32(0x00BCDCFC,0x3faaaaab)
end

emuObj.AddVsyncHook(widescreen)