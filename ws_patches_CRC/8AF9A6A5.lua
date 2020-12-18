apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Harvest Moon - A Wonderful Life - Special Edition (PAL-E) (SLES-53480)
--comment=Widescreen Hack by ElHecht

-- 16:9
eeObj.WriteMem32(0x0043c8ec,0x3c013f40)
eeObj.WriteMem32(0x0043c8f8,0x44810000)
eeObj.WriteMem32(0x0043c8fc,0x4600c602)
eeObj.WriteMem32(0x00403028,0x3c043fab)
eeObj.WriteMem32(0x00403030,0x3c05bfab)

-- 16:10
--eeObj.WriteMem32(0x0043c8ec,0x3c013f55)
--eeObj.WriteMem32(0x0043c8f0,0x34215555)
--eeObj.WriteMem32(0x0043c8f8,0x44810000)
--eeObj.WriteMem32(0x0043c8fc,0x4600c602)
--eeObj.WriteMem32(0x00403028,0x3c043f9a)
--eeObj.WriteMem32(0x00403030,0x3c05bf9a)

end

emuObj.AddVsyncHook(widescreen)