apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Tak: The Great Juju Challenge [PAL] (SLES_536.95)
--comment=Widescreen hack by El_Patas

--Gameplay 16:9
eeObj.WriteMem32(0x003E3C20,0x3C013FE3)
eeObj.WriteMem32(0x003E3C24,0x3421388E)
end

emuObj.AddVsyncHook(widescreen)