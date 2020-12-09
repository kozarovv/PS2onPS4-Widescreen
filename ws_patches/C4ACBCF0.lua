apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Area 51 (PAL-M5) (SLES-53075)
--comment=Widescreen Hack by ElHecht

-- 16:9
eeObj.WriteMem32(0x00392a10,0x3c193f40)
eeObj.WriteMem32(0x00392a28,0x4499f000)
eeObj.WriteMem32(0x00392a2c,0x461ea502)
eeObj.WriteMem32(0x003930f8,0x461ebb03)
eeObj.WriteMem32(0x003930e4,0x461eab83)

-- 16:10
--eeObj.WriteMem32(0x00392a10,0x3c193f55)
--eeObj.WriteMem32(0x00392a14,0x37395555)
--eeObj.WriteMem32(0x00392a28,0x4499f000)
--eeObj.WriteMem32(0x00392a2c,0x461ea502)
--eeObj.WriteMem32(0x003930f8,0x461ebb03)
--eeObj.WriteMem32(0x003930e4,0x461eab83)
end

emuObj.AddVsyncHook(widescreen)