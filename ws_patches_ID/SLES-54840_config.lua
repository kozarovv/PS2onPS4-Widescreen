apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Avatar - The Legend of Aang - The Burning Earth (PAL-M4) (SLES-54840)
--comment=Widescreen Hack (16:9) by ElHecht

--16:9
eeObj.WriteMem32(0x00142f70,0x3c033fe3)
eeObj.WriteMem32(0x00142f84,0x34638e39)
end

emuObj.AddVsyncHook(widescreen)