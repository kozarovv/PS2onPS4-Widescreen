apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Samurai (J)(SLPS-20178)
--comment=--comment=Widescreen hack by ElHecht(NTSC-J by Arapapa)

--Widescreen hack 16:9

--X-Fov
--eeObj.WriteMem32(0x00154768,0x3c023f40)

eeObj.WriteMem32(0x00100024,0x3c1b3f40)
eeObj.WriteMem32(0x0013865c,0x449bf000)
eeObj.WriteMem32(0x00138660,0x4600f787)
eeObj.WriteMem32(0x001386b0,0xe7be0050)
eeObj.WriteMem32(0x001388c0,0x449bf000)
eeObj.WriteMem32(0x001388c4,0x4600f787)
eeObj.WriteMem32(0x00138918,0xe7be0060)
eeObj.WriteMem32(0x001389f4,0x3c023fab)
end

emuObj.AddVsyncHook(widescreen)