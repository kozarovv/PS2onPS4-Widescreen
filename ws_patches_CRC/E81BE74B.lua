apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=X-Squad (E)(SLES-50031)
--comment=Widescreen Hack (PAL by Arapapa)
 
--803f013c 00008144 00000000 000040e4
eeObj.WriteMem32(0x001C7FFC,0x3c013f40)
end

emuObj.AddVsyncHook(widescreen)