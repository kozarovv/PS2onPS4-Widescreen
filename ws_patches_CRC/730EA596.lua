apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack (NTSC-J by Arapapa)

-- 16:9
eeObj.WriteMem32(0x0023a168,0x3c013f40)
eeObj.WriteMem32(0x0023a16c,0x4481f000)
eeObj.WriteMem32(0x0023a17c,0x461eb583)

eeObj.WriteMem32(0x001c7000,0x461e0002)
eeObj.WriteMem32(0x001c751c,0x461ea302)
end

emuObj.AddVsyncHook(widescreen)