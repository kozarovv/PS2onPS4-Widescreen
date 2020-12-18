apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Armored Core 2 [NTSC-J] (SLPS-25007)
--comment=Widescreen hack by ElHecht

-- 16:9
eeObj.WriteMem32(0x002885ec,0x3c013f40)
eeObj.WriteMem32(0x002885f8,0x44810000)
eeObj.WriteMem32(0x002885fc,0x4600c602)
eeObj.WriteMem32(0x001b252c,0x3c013f40)
eeObj.WriteMem32(0x001b253c,0x4481f000)
eeObj.WriteMem32(0x001b2540,0x461e6b42)

-- 16:10
--eeObj.WriteMem32(0x002885ec,0x3c013f55)
--eeObj.WriteMem32(0x002885f0,0x34215555)
--eeObj.WriteMem32(0x002885f8,0x44810000)
--eeObj.WriteMem32(0x002885fc,0x4600c602)
--eeObj.WriteMem32(0x001b252c,0x3c013f55)
--eeObj.WriteMem32(0x001b2530,0x34215555)
--eeObj.WriteMem32(0x001b253c,0x4481f000)
--eeObj.WriteMem32(0x001b2540,0x461e6b42)
end

emuObj.AddVsyncHook(widescreen)