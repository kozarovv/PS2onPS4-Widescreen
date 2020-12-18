apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack by nemesis2000
--Ported to PAL, added 16:10 support (ElHecht)
--
-- 16:9
eeObj.WriteMem32(0x001597f0,0x3c064500)
eeObj.WriteMem32(0x0015988c,0x3c023f40)
eeObj.WriteMem32(0x00159694,0x3c05442b)

-- 16:10
--eeObj.WriteMem32(0x001597f0,0x3c0644e6)
--eeObj.WriteMem32(0x00103a0c,0x3c013f55)
--eeObj.WriteMem32(0x00103a10,0x34215555)
--eeObj.WriteMem32(0x00103a18,0x44810000)
--eeObj.WriteMem32(0x00103a1c,0x4600c602)
--eeObj.WriteMem32(0x00159694,0x3c05441a)
end

emuObj.AddVsyncHook(widescreen)