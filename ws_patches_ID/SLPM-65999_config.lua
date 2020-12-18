apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Drag-on Dragoon 2 (J) (SLPM_659.99)
--comment=Widescreen Hack (NTSC-J by Arapapa)

-- 16:9
eeObj.WriteMem32(0x0055C898,0x3FE38E32)
eeObj.WriteMem32(0x005F3F94,0x44550000)
end

emuObj.AddVsyncHook(widescreen)