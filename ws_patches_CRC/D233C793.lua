apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Frogger - Ancient Shadow (U)(SLUS-21098)
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

--Zoom
--003f023c 5000bfff 00008244
eeObj.WriteMem32(0x001cfeb4,0x3c023f25)

--Y-Fov
--740001c6 020a0746 (1st)
eeObj.WriteMem32(0x0012f06c,0x08094e87)


eeObj.WriteMem32(0x00253a1c,0xc6010074)
eeObj.WriteMem32(0x00253a20,0x3c013faa)
eeObj.WriteMem32(0x00253a24,0x3421aaab)
eeObj.WriteMem32(0x00253a28,0x4481f000)
eeObj.WriteMem32(0x00253a2c,0x461e0842)
eeObj.WriteMem32(0x00253a30,0x0804bc1c)
end

emuObj.AddVsyncHook(widescreen)