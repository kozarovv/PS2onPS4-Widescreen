apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack by Arapapa

--Widescreen 16:9

--Zoom
eeObj.WriteMem32(0x00237f4c,0x3c023f20)

--Y-Fov
eeObj.WriteMem32(0x00237f78,0x081a8558)
eeObj.WriteMem32(0x006a1560,0x46000803)
eeObj.WriteMem32(0x006a1564,0x3c013f40)
eeObj.WriteMem32(0x006a1568,0x4481f000)
eeObj.WriteMem32(0x006a156c,0x461e0002)
eeObj.WriteMem32(0x006a1570,0x0808dfdf)
end

emuObj.AddVsyncHook(widescreen)