apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Trapt (NTSC-U)
--comment=Widescreen hack by ElHecht

-- 16:9 vertical fov
eeObj.WriteMem32(0x00104954,0x3c013f40)
eeObj.WriteMem32(0x00104960,0x4481f000)
eeObj.WriteMem32(0x0010496c,0x461eb582)

-- 16:9 horizontal fov
-- causes character popups in cut-scenes
--eeObj.WriteMem32(0x00104954,0x3c013f40)
--eeObj.WriteMem32(0x00104960,0x4481f000)
--eeObj.WriteMem32(0x00104964,0x461ebdc3)

-- loading screen
--eeObj.WriteMem32(0x0029a92c,0x3c0343f0)
eeObj.WriteMem32(0x0029a930,0x3c024415)

-- font fix for cut-scenes
eeObj.WriteMem32(0x001c5a4c,0x3c024190)

-- remove black bars in cut-scenes
eeObj.WriteMem32(0x001e4654,0x3c020000)
eeObj.WriteMem32(0x001e46a0,0x3c020000)
end

emuObj.AddVsyncHook(widescreen)