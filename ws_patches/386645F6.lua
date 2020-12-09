apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

eeObj.WriteMem32(0x00231620,0x08079b28)
eeObj.WriteMem32(0x001e6ca0,0x3c013f40)
eeObj.WriteMem32(0x001e6ca4,0x4481f000)
eeObj.WriteMem32(0x001e6ca8,0xc6010068)
eeObj.WriteMem32(0x001e6cac,0xc602006c)
eeObj.WriteMem32(0x001e6cb0,0x461e0843)
eeObj.WriteMem32(0x001e6cb8,0xe6010068)
eeObj.WriteMem32(0x001e6cbc,0x0808c58a)
end

emuObj.AddVsyncHook(widescreen)