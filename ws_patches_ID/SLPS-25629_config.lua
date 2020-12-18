apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Ace Combat Zero: The Belkan War (J) (SLPS_25629)
--comment=Widescreen fix by nemesis2000 (pnach by Arapapa)

--widescreen fix
eeObj.WriteMem32(0x003f9e50,0x43D638F3)
eeObj.WriteMem32(0x003f9e54,0x43EB7385)
end

emuObj.AddVsyncHook(widescreen)