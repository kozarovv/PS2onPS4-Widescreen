apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack by Arapapa

--Widescreen hack 16:9

--Zoom
--003f023c 1c0101c6
eeObj.WriteMem32(0x001864b0,0x3c023f1a)

--Y-Fov
--03081546 9400a0e7
eeObj.WriteMem32(0x0018652c,0x0808bac4)

eeObj.WriteMem32(0x0022eb10,0x46150803)
eeObj.WriteMem32(0x0022eb14,0x3c013faa)
eeObj.WriteMem32(0x0022eb18,0x3421aaab)
eeObj.WriteMem32(0x0022eb1c,0x4481f000)
eeObj.WriteMem32(0x0022eb20,0x461e0002)
eeObj.WriteMem32(0x0022eb24,0x0806194c)
end

emuObj.AddVsyncHook(widescreen)