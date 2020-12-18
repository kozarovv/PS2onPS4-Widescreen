apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Breath of Fire: Dragon Quarter (K) (SLKA-25100)
--comment=Widescreen hack by nemesis2000 (NTSC-K by Arapapa)

eeObj.WriteMem32(0x0012dc1c,0x3c024306)
eeObj.WriteMem32(0x0012dc20,0x3442f940)
eeObj.WriteMem32(0x0012dd68,0x3c034074)
end

emuObj.AddVsyncHook(widescreen)