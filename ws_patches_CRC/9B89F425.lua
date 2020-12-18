apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Nanobreaker SLES_529.64
--comment=Widescreen Hack
eeObj.WriteMem32(0x00499978,0x44550000)
eeObj.WriteMem32(0x00499980,0x3ac00000)
end

emuObj.AddVsyncHook(widescreen)