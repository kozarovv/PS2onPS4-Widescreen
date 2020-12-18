apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Red Faction (NTSC-U) (SLUS-20073)
--comment=Widescreen hack by ElHecht

-- 16:9
eeObj.WriteMem32(0x002071c4,0x3c013f40)
eeObj.WriteMem32(0x002071d0,0x4481f000)
eeObj.WriteMem32(0x002072e0,0x461ea502)
eeObj.WriteMem32(0x002072e8,0x461ead43)
eeObj.WriteMem32(0x0023a444,0x3c024309)
eeObj.WriteMem32(0x0023a34c,0x461e0303)

-- 16:10
--eeObj.WriteMem32(0x002071c4,0x3c013f55)
--eeObj.WriteMem32(0x002071cc,0x34215555)
--eeObj.WriteMem32(0x002071d0,0x4481f000)
--eeObj.WriteMem32(0x002072e0,0x461ea502)
--eeObj.WriteMem32(0x002072e8,0x461ead43)
--eeObj.WriteMem32(0x0023a444,0x3c024318)
--eeObj.WriteMem32(0x0023a34c,0x461e0303)
end

emuObj.AddVsyncHook(widescreen)