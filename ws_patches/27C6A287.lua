apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by El_Patas

--Gameplay 16:9
eeObj.WriteMem32(0x0027FFA0,0x3F400000)

--HUD and menus fix
eeObj.WriteMem32(0x00105d4c,0x3c0243f0)
eeObj.WriteMem32(0x0010614c,0x3c0243f0)
eeObj.WriteMem32(0x00171560,0x3c0243f0)
eeObj.WriteMem32(0x0023e5bc,0x3c0243f0)
end

emuObj.AddVsyncHook(widescreen)