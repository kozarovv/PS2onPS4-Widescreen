apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Avatar - The Last Airbender - The Burning Earth (NTSC-U)
--comment=Widescreen Hack (16:9) by ElHecht

--16:9
eeObj.WriteMem32(0x00142f30,0x3c033fe3)
eeObj.WriteMem32(0x00142f44,0x34638e39)
end

emuObj.AddVsyncHook(widescreen)