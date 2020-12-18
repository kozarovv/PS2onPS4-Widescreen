apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Neo Contra (PAL-M3) (SLES-52510)
--comment=Widescreen Hack by ElHecht

-- 16:9
eeObj.WriteMem32(0x0035a3ec,0x3c013f40)
eeObj.WriteMem32(0x0035a3f8,0x44810000)
eeObj.WriteMem32(0x0035a3fc,0x4600c602)

-- 16:10
--eeObj.WriteMem32(0x0035a3ec,0x3c013f55)
--eeObj.WriteMem32(0x0035a3f0,0x34215555)
--eeObj.WriteMem32(0x0035a3f8,0x44810000)
--eeObj.WriteMem32(0x0035a3fc,0x4600c602)
end

emuObj.AddVsyncHook(widescreen)