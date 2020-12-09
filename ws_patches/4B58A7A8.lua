apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack by ElHecht

-- 16:9
eeObj.WriteMem32(0x004b4fc0,0x3c013f40)
eeObj.WriteMem32(0x004b4fd8,0x34210000)
eeObj.WriteMem32(0x004b4fe4,0x4481f000)
eeObj.WriteMem32(0x004b4fe8,0x461e0842)
eeObj.WriteMem32(0x004b4ff0,0x461e1f83)
eeObj.WriteMem32(0x004b5008,0x4600f0c6)

-- 16:10
--eeObj.WriteMem32(0x004b4fc0,0x3c013f55)
--eeObj.WriteMem32(0x004b4fd8,0x34215555)
--eeObj.WriteMem32(0x004b4fe4,0x4481f000)
--eeObj.WriteMem32(0x004b4fe8,0x461e0842)
--eeObj.WriteMem32(0x004b4ff0,0x461e1f83)
--eeObj.WriteMem32(0x004b5008,0x4600f0c6)
end

emuObj.AddVsyncHook(widescreen)