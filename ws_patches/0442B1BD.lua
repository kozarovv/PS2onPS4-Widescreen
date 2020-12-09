apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack by ElHecht (Pnach by Little Giant)

-- 16:9
eeObj.WriteMem32(0x0013fa48,0x3c024328)
eeObj.WriteMem32(0x0013fc38,0x3c013f40)
eeObj.WriteMem32(0x0013fc3c,0x4481f000)
eeObj.WriteMem32(0x0013fc40,0x461e6b43)
eeObj.WriteMem32(0x0013fc44,0x03e00008)
eeObj.WriteMem32(0x0013fc48,0xe46d02bc)
end

emuObj.AddVsyncHook(widescreen)