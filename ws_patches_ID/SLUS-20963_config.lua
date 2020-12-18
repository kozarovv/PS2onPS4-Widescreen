apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Final Fantasy XII (SLUS-20963)
--comment=Widescreen hack by nemesis2000 (pnach by nemesis2000)

--widescreen fix
eeObj.WriteMem32(0x00180388,0x3C013f80)
eeObj.WriteMem32(0x0018038c,0x34210000)
eeObj.WriteMem32(0x0033d55c,0x3c020000)
end

emuObj.AddVsyncHook(widescreen)