apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Berserk (K)(SLKA-25213)
--comment=Widescreen Hack by Arapapa

--Widescreen hack 16:9

--X-Fov 
--4c3f033c 703f023c cdcc6334 (3rd)
eeObj.WriteMem32(0x00239acc,0x3c033f19)
eeObj.WriteMem32(0x00239ad4,0x3463999a)
end

emuObj.AddVsyncHook(widescreen)