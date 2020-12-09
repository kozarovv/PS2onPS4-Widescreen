apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by El_Patas

--Causes a Zoom in the 2 Player mode

--Gameplay 16:9
eeObj.WriteMem32(0x0017E464,0x3C013F8D)
eeObj.WriteMem32(0x0017E468,0x3421EF4E)
eeObj.WriteMem32(0x0017E364,0x3C013FE3)
eeObj.WriteMem32(0x0017E368,0x3421EF4E)
end

emuObj.AddVsyncHook(widescreen)