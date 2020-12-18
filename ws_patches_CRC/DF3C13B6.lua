apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Avatar - The Legend of Aang (PAL-M4) (SLES-54188)
--comment=Widescreen Hack (16:9) by ElHecht

--16:9
eeObj.WriteMem32(0x00142818,0x3c033fe3)
eeObj.WriteMem32(0x0014281c,0x34638e39)
end

emuObj.AddVsyncHook(widescreen)