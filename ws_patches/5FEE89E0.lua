apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by ElHecht (NTSC-J by Arapapa)

-- 16:9 vertical fov
--00000000 02a80e46 83050c46 00000000 00000000
eeObj.WriteMem32(0x001049a4,0x3c013f40)
eeObj.WriteMem32(0x001049b0,0x4481f000)
eeObj.WriteMem32(0x001049bc,0x461eb582)

-- loading screen
--e043023c 200083ac (3rd)
eeObj.WriteMem32(0x002b6580,0x3c024415)

-- font fix for cut-scenes
--c041023c 00608244 (1st) 
eeObj.WriteMem32(0x001c86f0,0x3c024190)

-- remove black bars in cut-scenes
--2044023c 3000bfff 00608244
--eeObj.WriteMem32(0x001e7234,0x3c020000)
--eeObj.WriteMem32(0x001e7280,0x3c020000)
end

emuObj.AddVsyncHook(widescreen)