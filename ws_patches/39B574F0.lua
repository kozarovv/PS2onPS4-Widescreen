apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen fix by nemesis2000 (pnach by nemesis2000)

--widescreen fix
eeObj.WriteMem32(0x00440828,0x43D638F3)
eeObj.WriteMem32(0x0044082C,0x43EB7385)
end

emuObj.AddVsyncHook(widescreen)