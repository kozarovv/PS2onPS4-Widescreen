apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen fix by nemesis2000 (pnach by nemesis2000)

--widescreen fix
--c3150344 d7131044
eeObj.WriteMem32(0x003fa358,0x43D638F3)
eeObj.WriteMem32(0x003fa35c,0x43EB7385)
end

emuObj.AddVsyncHook(widescreen)