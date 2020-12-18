apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=JoJo no Kimyou na Bouken Ougon no Kaze SLPM_651.40
--comment=Widescreen Hack
eeObj.WriteMem32(0x00124f64,0x3c023f22)
eeObj.WriteMem32(0x00361ae8,0x43f00000)
eeObj.WriteMem32(0x003d23c0,0x43700000)
end

emuObj.AddVsyncHook(widescreen)