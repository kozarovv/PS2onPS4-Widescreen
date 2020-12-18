apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=WWE Crush Hour (PAL-E) (SLES-51600)
--comment=Widescreen hack by ElHecht

-- 16:9
eeObj.WriteMem32(0x00331084,0x3c023f40)
eeObj.WriteMem32(0x0029e024,0x3c023f2b)
eeObj.WriteMem32(0x0029e060,0x3c023f2b)

-- 16:10
--eeObj.WriteMem32(0x00331084,0x3c023f55)
--eeObj.WriteMem32(0x00331088,0x34425555)
--eeObj.WriteMem32(0x00331090,0x44820800)
--eeObj.WriteMem32(0x00331098,0x46000803)
--eeObj.WriteMem32(0x003310a0,0xe4400070)
--eeObj.WriteMem32(0x003310a4,0x46010843)
--eeObj.WriteMem32(0x0029e024,0x3c023f2b)
--eeObj.WriteMem32(0x0029e060,0x3c023f2b)
end

emuObj.AddVsyncHook(widescreen)