apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Monsters, Inc. (U)(SCUS-97123)
--comment=Widescreen hack by ElHecht (NTSC-U by Arapapa)

-- 16:9
eeObj.WriteMem32(0x001c7528,0x080abe2b)
eeObj.WriteMem32(0x001c752c,0x00000000)


eeObj.WriteMem32(0x002af8ac,0x3c013f40)
eeObj.WriteMem32(0x002af8b0,0x4481f000)
eeObj.WriteMem32(0x002af8b4,0xc6010068)
eeObj.WriteMem32(0x002af8b8,0xc602006c)
eeObj.WriteMem32(0x002af8bc,0x461e0843)
eeObj.WriteMem32(0x002af8c0,0xe6010068)
eeObj.WriteMem32(0x002af8c4,0x08071d4b)
end

emuObj.AddVsyncHook(widescreen)