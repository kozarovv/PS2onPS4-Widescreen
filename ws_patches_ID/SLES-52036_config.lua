apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=WWE SmackDown - Here Comes the Pain (PAL-E) (SLES-52036)
--comment=Widescreen hack by ElHecht

-- 16:9
eeObj.WriteMem32(0x001040e4,0x3c013f40)
eeObj.WriteMem32(0x001040f0,0x44810000)
eeObj.WriteMem32(0x001040f4,0x4600c602)
eeObj.WriteMem32(0x002072bc,0x3c023f08)

-- 16:10
--eeObj.WriteMem32(0x001040e4,0x3c013f55)
--eeObj.WriteMem32(0x001040e8,0x34215555)
--eeObj.WriteMem32(0x001040f0,0x44810000)
--eeObj.WriteMem32(0x001040f4,0x4600c602)
--eeObj.WriteMem32(0x002072bc,0x3c023f30)
end

emuObj.AddVsyncHook(widescreen)