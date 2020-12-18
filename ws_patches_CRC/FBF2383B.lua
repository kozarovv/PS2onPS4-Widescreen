apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=X-Men 2 - Wolverine's Revenge (PAL-M3) (SLES-51548)
--comment=Widescreen hack by ElHecht

-- 16:9
eeObj.WriteMem32(0x002ce814,0x3c013f40)

-- 16:10
--eeObj.WriteMem32(0x002ce814,0x3c013f55)
--eeObj.WriteMem32(0x002ce818,0x34215555)

-- 16:9 and 16:10 modifications
eeObj.WriteMem32(0x0017ec0c,0x080b3a03)
eeObj.WriteMem32(0x0017ec10,0x00000000)
eeObj.WriteMem32(0x0017ec14,0x00000000)
eeObj.WriteMem32(0x002ce80c,0x0c068008)
eeObj.WriteMem32(0x002ce810,0x00000000)
eeObj.WriteMem32(0x002ce81c,0x4481e800)
eeObj.WriteMem32(0x002ce820,0x461de703)
eeObj.WriteMem32(0x002ce824,0x4615ef42)
eeObj.WriteMem32(0x002ce828,0xe61d0000)
eeObj.WriteMem32(0x002ce82c,0x46151f43)
eeObj.WriteMem32(0x002ce830,0x0805fb05)
eeObj.WriteMem32(0x001699e8,0x3c014200)
eeObj.WriteMem32(0x001a09f0,0x3c013fee)
end

emuObj.AddVsyncHook(widescreen)