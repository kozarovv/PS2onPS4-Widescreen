apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by ElHecht

-- 16:9
eeObj.WriteMem32(0x0020eb8c,0x3c013f40)
eeObj.WriteMem32(0x0020eb90,0x4481f000)
eeObj.WriteMem32(0x0020eb9c,0x461ec602)
eeObj.WriteMem32(0x001efb7c,0x3c0144b0)
eeObj.WriteMem32(0x002076cc,0x3c013fab)

-- 16:10
--eeObj.WriteMem32(0x0020eb8c,0x3c013f55)
--eeObj.WriteMem32(0x0020eb90,0x34215555)
--eeObj.WriteMem32(0x0020eb98,0x4481f000)
--eeObj.WriteMem32(0x0020eb9c,0x461ec602)
--eeObj.WriteMem32(0x001efb7c,0x3c0144a0)
--eeObj.WriteMem32(0x002076cc,0x3c013f9a)
end

emuObj.AddVsyncHook(widescreen)