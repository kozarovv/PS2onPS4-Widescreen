apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Tenchu - Wrath of Heaven (NTSC-K)(SLKA-25064)
--comment=Widescreen hack (NTSC-K by Arapapa)

--Widescreen 16:9
eeObj.WriteMem32(0x01646724,0x3f400000)

--render fix
eeObj.WriteMem32(0x00154ba8,0x3c024455)
eeObj.WriteMem32(0x00154e10,0x3c024455)
end

emuObj.AddVsyncHook(widescreen)