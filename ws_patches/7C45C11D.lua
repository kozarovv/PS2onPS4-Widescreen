apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by nemesis2000 (pnach by Arapapa)

eeObj.WriteMem32(0x001b06d4,0x3c01bec0)
eeObj.WriteMem32(0x001b06dc,0x44813000)

eeObj.WriteMem32(0x001af644,0x00000000)
eeObj.WriteMem32(0x001af648,0x27bdffd0)
eeObj.WriteMem32(0x001af64c,0x3c01bf00)
eeObj.WriteMem32(0x001af650,0x44813800)
eeObj.WriteMem32(0x001af654,0x7fb00020)
eeObj.WriteMem32(0x001af658,0xffbf0010)
eeObj.WriteMem32(0x001af65c,0x0080802d)
eeObj.WriteMem32(0x001af660,0x26060020)
eeObj.WriteMem32(0x001af664,0xc6000070)
eeObj.WriteMem32(0x001af668,0x8e020004)
eeObj.WriteMem32(0x001af66c,0x46060202)
end

emuObj.AddVsyncHook(widescreen)