apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Area 51 (NTSC-U) (SLUS-20595)
--comment=Widescreen Hack by ElHecht

-- 16:9
eeObj.WriteMem32(0x003922d8,0x3c193f40)
eeObj.WriteMem32(0x003922f0,0x4499f000)
eeObj.WriteMem32(0x003922f4,0x461ea502)
eeObj.WriteMem32(0x003929c0,0x461ebb03)
eeObj.WriteMem32(0x003929ac,0x461eab83)

-- 16:10
--eeObj.WriteMem32(0x003922d8,0x3c193f55)
--eeObj.WriteMem32(0x003922dc,0x37395555)
--eeObj.WriteMem32(0x003922f0,0x4499f000)
--eeObj.WriteMem32(0x003922f4,0x461ea502)
--eeObj.WriteMem32(0x003929c0,0x461ebb03)
--eeObj.WriteMem32(0x003929ac,0x461eab83)
end

emuObj.AddVsyncHook(widescreen)