apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack by nemesis2000
-- Ported to PAL, added 16:10 support (ElHecht), Font width added by El_Patas
--
-- 16:9
eeObj.WriteMem32(0x00489fec,0x3c013f40)
eeObj.WriteMem32(0x00489ff0,0x44810000)
eeObj.WriteMem32(0x00489ff8,0x4600c602)

--Font width
eeObj.WriteMem32(0x00736E1C,0x3F400000)
eeObj.WriteMem32(0x00737EEC,0x3F400000)

-- 16:10
--eeObj.WriteMem32(0x00489fec,0x3c013f55)
--eeObj.WriteMem32(0x00489ff0,0x34215555)
--eeObj.WriteMem32(0x00489ff8,0x44810000)
--eeObj.WriteMem32(0x00489ffc,0x4600c602)
end

emuObj.AddVsyncHook(widescreen)