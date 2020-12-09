apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack by El_Patas

--Gameplay 16:9 
eeObj.WriteMem32(0x00425280,0x3FC0D938)

--Prevent writes to 00425280 for make the patch to work in the PS2
eeObj.WriteMem32(0x001C8294,0x00000000)
eeObj.WriteMem32(0x001C8578,0x00000000)
eeObj.WriteMem32(0x0030BAD0,0x00000000)
eeObj.WriteMem32(0x00317E40,0x00000000)
eeObj.WriteMem32(0x0036E7F4,0x00000000)
eeObj.WriteMem32(0x0036F5B0,0x00000000)
end

emuObj.AddVsyncHook(widescreen)