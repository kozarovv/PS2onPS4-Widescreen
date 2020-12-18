apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Red Faction II (NTSC-U) (SLUS-20442)
--comment=Widescreen hack by ElHecht

-- 16:9
eeObj.WriteMem32(0x0018be60,0x3c013f40)
eeObj.WriteMem32(0x0018be74,0x4481f000)
eeObj.WriteMem32(0x0018be78,0x461ea502)
eeObj.WriteMem32(0x0018be7c,0x461ead43)
eeObj.WriteMem32(0x001a2700,0x3c034309)
eeObj.WriteMem32(0x001a2620,0x3c023fab)

-- 16:10
--eeObj.WriteMem32(0x0018be60,0x3c013f55)
--eeObj.WriteMem32(0x0018be6c,0x34215555)
--eeObj.WriteMem32(0x0018be74,0x4481f000)
--eeObj.WriteMem32(0x0018be78,0x461ea502)
--eeObj.WriteMem32(0x0018be7c,0x461ead43)
--eeObj.WriteMem32(0x001a2700,0x3c034318)
--eeObj.WriteMem32(0x001a2620,0x3c023f9a)
end

emuObj.AddVsyncHook(widescreen)