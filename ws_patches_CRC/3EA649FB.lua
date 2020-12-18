apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

--X-Fov
--c3b00046 803980e4
eeObj.WriteMem32(0x004b9fd0,0x0813424c)

eeObj.WriteMem32(0x004d0930,0x4600b0c3)
eeObj.WriteMem32(0x004d0934,0x3c013f40)
eeObj.WriteMem32(0x004d0938,0x4481f000)
eeObj.WriteMem32(0x004d093c,0x461e18c2)
eeObj.WriteMem32(0x004d0940,0x0812e7f5)

--Render fix
--003f013c 00608144 3700026a
eeObj.WriteMem32(0x003d5c14,0x3c013f2b)
end

emuObj.AddVsyncHook(widescreen)