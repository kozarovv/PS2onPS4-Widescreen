apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle= Sega Rally 2006 (NTSC-J SLPM-66212)
--comment= Sega Rally 2006 (NTSC-J SLPM-66212) Widescreen Hack by VIRGIN KLM

--Widescreen
eeObj.WriteMem32(0x00383AF8,0x3FC71C71)
eeObj.WriteMem32(0x00356EA0,0x3FC71C71)
eeObj.WriteMem32(0x00356EC0,0x3FC71C71)
eeObj.WriteMem32(0x0038445C,0x00000001)
eeObj.WriteMem32(0x00383C3C,0x3FC00000)
end

emuObj.AddVsyncHook(widescreen)