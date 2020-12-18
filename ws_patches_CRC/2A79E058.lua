apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by ElHecht

-- 16:9 vertical fov
eeObj.WriteMem32(0x00104974,0x3c013f40)
eeObj.WriteMem32(0x00104980,0x4481f000)
eeObj.WriteMem32(0x0010498c,0x461eb582)

-- 16:9 horizontal fov
-- causes character popups in cut-scenes
--eeObj.WriteMem32(0x00104974,0x3c013f40)
--eeObj.WriteMem32(0x00104980,0x4481f000)
--eeObj.WriteMem32(0x00104984,0x461ebdc3)

-- loading screen
--eeObj.WriteMem32(0x0029ce3c,0x3c0343f0)
eeObj.WriteMem32(0x0029ce40,0x3c024415)

-- font fix for cut-scenes
eeObj.WriteMem32(0x001c628c,0x3c024190)

-- remove black bars in cut-scenes
eeObj.WriteMem32(0x001e4e04,0x3c020000)
eeObj.WriteMem32(0x001e4e50,0x3c020000)
end

emuObj.AddVsyncHook(widescreen)