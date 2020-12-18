apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack by El_Patas 

--Gameplay 16:9
eeObj.WriteMem32(0x0012670C,0x3C0143C0)
eeObj.WriteMem32(0x0010108C,0x3C0143B4)
eeObj.WriteMem32(0x00100D1C,0x3C0143B4)
end

emuObj.AddVsyncHook(widescreen)