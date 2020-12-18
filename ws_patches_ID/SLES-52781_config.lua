apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=WWE SmackDown vs. Raw (PAL-E) (SLES-52781)
--comment=Widescreen hack by ElHecht

-- 16:9
eeObj.WriteMem32(0x0011a434,0x3c013f40)
eeObj.WriteMem32(0x0011a440,0x4481f000)
eeObj.WriteMem32(0x0011a444,0x461ec602)
eeObj.WriteMem32(0x001d809c,0x3c023f08)

-- 16:10
--eeObj.WriteMem32(0x0011a434,0x3c013f55)
--eeObj.WriteMem32(0x0011a438,0x34215555)
--eeObj.WriteMem32(0x0011a440,0x4481f000)
--eeObj.WriteMem32(0x0011a444,0x461ec602)
--eeObj.WriteMem32(0x001d809c,0x3c023f30)
end

emuObj.AddVsyncHook(widescreen)