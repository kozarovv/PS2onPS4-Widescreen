apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by ElHecht

-- 16:9
eeObj.WriteMem32(0x00145154,0x4483e800)
eeObj.WriteMem32(0x00145158,0x4600eb02)
eeObj.WriteMem32(0x0014515c,0xe7b40000)
eeObj.WriteMem32(0x00145160,0x0c047d0a)
eeObj.WriteMem32(0x00145164,0x46006d06)
eeObj.WriteMem32(0x00145168,0x3c013f40)
eeObj.WriteMem32(0x0014516c,0x4481f000)
eeObj.WriteMem32(0x00145170,0x461e0003)
eeObj.WriteMem32(0x00145188,0x4600e846)
end

emuObj.AddVsyncHook(widescreen)