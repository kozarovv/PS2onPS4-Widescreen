apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by El_Patas

--Gameplay 16:9 
eeObj.WriteMem32(0x001BCA20,0x3C01427F)
eeObj.WriteMem32(0x001BCAB0,0x3C013F35)
eeObj.WriteMem32(0x001BCAB4,0x3421FA25)
end

emuObj.AddVsyncHook(widescreen)