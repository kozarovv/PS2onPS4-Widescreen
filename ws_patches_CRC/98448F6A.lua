apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Arc the Lad - Generation (NTSC-J) (SCPS-15058)
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

--cccc4c3f eeee6e3f d70f49c0
eeObj.WriteMem32(0x002BDB84,0x3F19999A)
end

emuObj.AddVsyncHook(widescreen)