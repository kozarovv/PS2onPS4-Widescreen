apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by ElHecht

-- 16:9
eeObj.WriteMem32(0x00207a5c,0x3c013f40)
eeObj.WriteMem32(0x00207a60,0x44810000)
eeObj.WriteMem32(0x00207a68,0x4600c602)
eeObj.WriteMem32(0x001e8a84,0x3c0144b0)
eeObj.WriteMem32(0x0020059c,0x3c013fab)

-- 16:10
--eeObj.WriteMem32(0x00207a5c,0x3c013f40)
--eeObj.WriteMem32(0x00207a60,0x34215555)
--eeObj.WriteMem32(0x00207a68,0x4481f000)
--eeObj.WriteMem32(0x00207a6c,0x461ec602)
--eeObj.WriteMem32(0x001e8a84,0x3c0144a0)
--eeObj.WriteMem32(0x0020059c,0x3c013f9a)
end

emuObj.AddVsyncHook(widescreen)