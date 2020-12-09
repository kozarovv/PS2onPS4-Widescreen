apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack (16:9) by ElHecht

-- 16:9
eeObj.WriteMem32(0x001269fc,0x3c013f40)
eeObj.WriteMem32(0x00126a00,0x4481f000)
eeObj.WriteMem32(0x00126a0c,0x4600a746)
eeObj.WriteMem32(0x00126a10,0x461ea502)
eeObj.WriteMem32(0x00126a68,0xe7bd0014)
eeObj.WriteMem32(0x00126b20,0x461e1f83)
eeObj.WriteMem32(0x00126b6c,0xe47e0014)
end

emuObj.AddVsyncHook(widescreen)