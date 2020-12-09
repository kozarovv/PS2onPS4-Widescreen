apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=X-Men Legends II - Rise of Apocalypse (PAL-M3) (SLES-53374)
--comment=Widescreen hack by ElHecht

-- 16:9
eeObj.WriteMem32(0x00270964,0x3c033f40)
eeObj.WriteMem32(0x0027097c,0x460318c3)
eeObj.WriteMem32(0x00898350,0x3f19999a)

-- 16:10
--eeObj.WriteMem32(0x00270964,0x3c033f55)
--eeObj.WriteMem32(0x00270968,0x34635555)
--eeObj.WriteMem32(0x0027096c,0x44831800)
--eeObj.WriteMem32(0x0027097c,0x460318c3)
--eeObj.WriteMem32(0x00898350,0x3f2aaaab)
end

emuObj.AddVsyncHook(widescreen)