apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

eeObj.WriteMem32(0x00275b38,0x081112b0)
eeObj.WriteMem32(0x00275b3c,0x00000000)

eeObj.WriteMem32(0x00444ac0,0x3c013f40)
eeObj.WriteMem32(0x00444ac4,0x4481f000)
eeObj.WriteMem32(0x00444ac8,0xc6010068)
eeObj.WriteMem32(0x00444acc,0xc602006c)
eeObj.WriteMem32(0x00444ad0,0x461e0843)
eeObj.WriteMem32(0x00444ad4,0xe6010068)
eeObj.WriteMem32(0x00444ad8,0x0809d6d0)
end

emuObj.AddVsyncHook(widescreen)