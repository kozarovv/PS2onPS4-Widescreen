apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=SD Gundam Force - Showdown! (U)(SLUS-20698)
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

--X-Fov 
--e43e023c 49924234 00608244 (1st) -> 183f023c 84614234 00608244
eeObj.WriteMem32(0x00437134,0x3c023f18)
eeObj.WriteMem32(0x00437138,0x34426184)
end

emuObj.AddVsyncHook(widescreen)