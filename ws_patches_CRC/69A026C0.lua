apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by nemesis2000 (pnach by nemesis2000 )

eeObj.WriteMem32(0x001b1618,0x3c013f36)
eeObj.WriteMem32(0x001b161c,0x34210b5f)
eeObj.WriteMem32(0x001b1628,0x3c014440)

eeObj.WriteMem32(0x001b1888,0x3c013f36)
eeObj.WriteMem32(0x001b188c,0x34210b5f)
eeObj.WriteMem32(0x001b1894,0x3c014440)

eeObj.WriteMem32(0x001b1a00,0x3c013f36)
eeObj.WriteMem32(0x001b1a04,0x34210b5f)
eeObj.WriteMem32(0x001b1a0c,0x3c014440)

eeObj.WriteMem32(0x00147a18,0x3c013f36)
eeObj.WriteMem32(0x00147a1c,0x34210b5f)
eeObj.WriteMem32(0x00147a28,0x3c014440)

eeObj.WriteMem32(0x00147c00,0x3c013f36)
eeObj.WriteMem32(0x00147c04,0x34210b5f)
eeObj.WriteMem32(0x00147c0c,0x3c014440)

eeObj.WriteMem32(0x00147df0,0x3c013f36)
eeObj.WriteMem32(0x00147df4,0x34210b5f)
eeObj.WriteMem32(0x00147dfc,0x3c014440)

eeObj.WriteMem32(0x00180424,0x3c013f36)
eeObj.WriteMem32(0x00180428,0x34210b5f)
eeObj.WriteMem32(0x00180434,0x3c014440)

eeObj.WriteMem32(0x0018cedc,0x3c013f36)
eeObj.WriteMem32(0x0018cee0,0x34210b5f)
eeObj.WriteMem32(0x0018ceec,0x3c014440)

--render fix value
eeObj.WriteMem32(0x001aacd8,0x3c013fe3)
eeObj.WriteMem32(0x001aacdc,0x3421d70a)

eeObj.WriteMem32(0x001ac798,0x3c013fe3)
eeObj.WriteMem32(0x001ac79c,0x3421d70a)
end

emuObj.AddVsyncHook(widescreen)