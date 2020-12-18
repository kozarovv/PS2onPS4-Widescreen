apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack (16:9) by nemesis2000
-- ported to PAL (elhecht)
--3D scenes
eeObj.WriteMem32(0x0046d834,0x3c013f40)
eeObj.WriteMem32(0x0046d838,0x44810000)
eeObj.WriteMem32(0x0046d840,0x4600c602)

--battle's fix
eeObj.WriteMem32(0x00bb16d0,0x44400000)
eeObj.WriteMem32(0x00bb16d8,0xc4400000)
eeObj.WriteMem32(0x00bb0a00,0x3faaaaab)
end

emuObj.AddVsyncHook(widescreen)