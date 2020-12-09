apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack by ElHecht

-- 16:9
eeObj.WriteMem32(0x001966e4,0x10400007)
eeObj.WriteMem32(0x001966fc,0x1000fffd)
eeObj.WriteMem32(0x00196704,0x3c013f40)
eeObj.WriteMem32(0x0019670c,0x4481f000)
eeObj.WriteMem32(0x00196710,0xc784bcbc)
eeObj.WriteMem32(0x00196724,0x461e2102)
eeObj.WriteMem32(0x0018f0b8,0x4615ad03)
eeObj.WriteMem32(0x0018f0bc,0x461e2743)
eeObj.WriteMem32(0x0018f0f0,0xe79dbca4)

-- 16:10
--eeObj.WriteMem32(0x001966e4,0x10400007)
--eeObj.WriteMem32(0x001966fc,0x1000fffd)
--eeObj.WriteMem32(0x00196704,0x3c013f55)
--eeObj.WriteMem32(0x00196708,0x34215555)
--eeObj.WriteMem32(0x0019670c,0x4481f000)
--eeObj.WriteMem32(0x00196710,0xc784bcbc)
--eeObj.WriteMem32(0x00196724,0x461e2102)
--eeObj.WriteMem32(0x0018f0b8,0x4615ad03)
--eeObj.WriteMem32(0x0018f0bc,0x461e2743)
--eeObj.WriteMem32(0x0018f0f0,0xe79dbca4)

--Black bar fix by Arapapa (Get rid of 'Black Bar')
--9a99993f 5555553f 5655553e
eeObj.WriteMem32(0x00585104,0x00000000)
end

emuObj.AddVsyncHook(widescreen)