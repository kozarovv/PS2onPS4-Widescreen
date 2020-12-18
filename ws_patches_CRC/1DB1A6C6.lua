apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by ElHecht

-- 16:9
eeObj.WriteMem32(0x00126ce4,0x0810504c)
eeObj.WriteMem32(0x00126ce8,0x00000000)

eeObj.WriteMem32(0x00414130,0x3c013f40)
eeObj.WriteMem32(0x00414134,0x4481f000)
eeObj.WriteMem32(0x00414138,0x461e0002)
eeObj.WriteMem32(0x0041413c,0xe6000024)
eeObj.WriteMem32(0x00414140,0xc7a10020)
eeObj.WriteMem32(0x00414144,0x461e0843)
eeObj.WriteMem32(0x00414148,0xe7a10020)
eeObj.WriteMem32(0x00414150,0x08049b3a)

--Font fix by Arapapa
eeObj.WriteMem32(0x0023fd98,0x3c023f10)
eeObj.WriteMem32(0x00240a0c,0x3c023f10)
end

emuObj.AddVsyncHook(widescreen)