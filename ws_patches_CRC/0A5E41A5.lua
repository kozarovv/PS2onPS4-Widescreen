apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by ElHecht
--comment=FMV hack by Pelvicthrustman
--comment=Black borders fix by nemesis2000

-- 16:9
eeObj.WriteMem32(0x001485c4,0x3c013f40)
eeObj.WriteMem32(0x001485d0,0x4481f000)
eeObj.WriteMem32(0x00148600,0x461ed683)
eeObj.WriteMem32(0x00148614,0x4600d647)

--By Pelvicthrustman
eeObj.WriteMem32(0x002f9e44,0x3c0203c0)
eeObj.WriteMem32(0x002f9e7c,0x340201a4)

--By Nemesis2000
eeObj.WriteMem32(0x001a9980,0x24030000)
end

emuObj.AddVsyncHook(widescreen)