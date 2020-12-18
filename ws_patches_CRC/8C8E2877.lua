apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Mystic Heroes SLES_513.58
--comment=Widescreen Hack
eeObj.WriteMem32(0x00326AE0,0x3F400000)
end

emuObj.AddVsyncHook(widescreen)