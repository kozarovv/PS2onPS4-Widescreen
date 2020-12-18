apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Perfect Ace - Pro Tournament Tennis (E)(SLES-51735)
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

eeObj.WriteMem32(0x002705b8,0x080b6dd4)
eeObj.WriteMem32(0x002705bc,0x00000000)

eeObj.WriteMem32(0x002db750,0x3c013f40)
eeObj.WriteMem32(0x002db754,0x4481f000)
eeObj.WriteMem32(0x002db758,0xc6010068)
eeObj.WriteMem32(0x002db75c,0xc602006c)
eeObj.WriteMem32(0x002db760,0x461e0843)
eeObj.WriteMem32(0x002db764,0xe6010068)
eeObj.WriteMem32(0x002db768,0x0809c170)
end

emuObj.AddVsyncHook(widescreen)