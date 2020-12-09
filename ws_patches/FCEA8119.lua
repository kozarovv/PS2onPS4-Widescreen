apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Rogue Ops SLUS_207.46
--comment=Widescreen Hack
eeObj.WriteMem32(0x00665F80,0x3F400000)
end

emuObj.AddVsyncHook(widescreen)