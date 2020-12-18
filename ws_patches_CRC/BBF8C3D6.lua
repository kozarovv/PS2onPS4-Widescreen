apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Echo Night: Beyond [PAL] (SLES_534.14)
--comment=Widescreen hack by El_Patas and Arapapa

--Widescreen hack 16:9

--Force turn on Internal Widescreen
--01 00 00 00 00 00 00 3F
eeObj.WriteMem32(0x002b4001,byte,00000001
 
--Zoom Fix
eeObj.WriteMem32(0x00146EA4,0x3C023F1F)
--eeObj.WriteMem32(0x00146EA0,0x3C033FA0)
end

emuObj.AddVsyncHook(widescreen)