apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Final Fantasy XII (SLES-54356)
--comment=Widescreen hack by nemesis2000 (original pnach by nemesis2000)
--comment=Ported from PAL-E to PAL-G by theHOMER

--widescreen fix
eeObj.WriteMem32(0x001803c8,0x3C013f80)
eeObj.WriteMem32(0x001803cc,0x34210000)
eeObj.WriteMem32(0x0033E714,0x3c020000)
end

emuObj.AddVsyncHook(widescreen)