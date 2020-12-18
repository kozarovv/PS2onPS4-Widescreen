apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by El_Patas

--Gameplay 16:9
eeObj.WriteMem32(0x00816364,0x3F400000)

--Menu 3D stuff
eeObj.WriteMem32(0x0047F5E4,0x3F400000)
end

emuObj.AddVsyncHook(widescreen)