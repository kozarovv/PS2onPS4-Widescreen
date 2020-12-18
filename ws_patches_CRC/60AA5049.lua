apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by nemesis2000 (NTSC-K by Arapapa)

--803f023c d000a426 d000a2ae
eeObj.WriteMem32(0x00139004,0x3c023f40)
end

emuObj.AddVsyncHook(widescreen)