apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen fix by nemesis2000 (PAL-E by mirh)

--widescreen fix
eeObj.WriteMem32(0x003FC370,0x43D638F3)
eeObj.WriteMem32(0x003FC374,0x43EB7385)
end

emuObj.AddVsyncHook(widescreen)