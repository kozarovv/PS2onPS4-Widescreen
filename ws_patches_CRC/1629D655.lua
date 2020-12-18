apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by ElHecht

-- 16:9
eeObj.WriteMem32(0x0018c650,0x3c013f40)
eeObj.WriteMem32(0x0018c664,0x4481f000)
eeObj.WriteMem32(0x0018c668,0x461ea502)
eeObj.WriteMem32(0x0018c66c,0x461ead43)
eeObj.WriteMem32(0x001a3038,0x3c034309)
eeObj.WriteMem32(0x001a2f58,0x3c023fab)

-- 16:10
--eeObj.WriteMem32(0x0018c650,0x3c013f55)
--eeObj.WriteMem32(0x0018c65c,0x34215555)
--eeObj.WriteMem32(0x0018c664,0x4481f000)
--eeObj.WriteMem32(0x0018c668,0x461ea502)
--eeObj.WriteMem32(0x0018c66c,0x461ead43)
--eeObj.WriteMem32(0x001a3038,0x3c034318)
--eeObj.WriteMem32(0x001a2f58,0x3c023f9a)
end

emuObj.AddVsyncHook(widescreen)