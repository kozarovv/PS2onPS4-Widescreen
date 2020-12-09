apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Red Faction (PAL-G) (SLES-50279)
--comment=Widescreen hack by ElHecht

-- 16:9
eeObj.WriteMem32(0x00206e74,0x3c013f40)
eeObj.WriteMem32(0x00206e80,0x4481f000)
eeObj.WriteMem32(0x00206f90,0x461ea502)
eeObj.WriteMem32(0x00206f98,0x461ead43)
eeObj.WriteMem32(0x0023a184,0x3c024309)
eeObj.WriteMem32(0x0023a08c,0x461e0303)

-- 16:10
--eeObj.WriteMem32(0x00206e74,0x3c013f55)
--eeObj.WriteMem32(0x00206e7c,0x34215555)
--eeObj.WriteMem32(0x00206e80,0x4481f000)
--eeObj.WriteMem32(0x00206f90,0x461ea502)
--eeObj.WriteMem32(0x00206f98,0x461ead43)
--eeObj.WriteMem32(0x0023a184,0x3c024318)
--eeObj.WriteMem32(0x0023a08c,0x461e0303)
end

emuObj.AddVsyncHook(widescreen)