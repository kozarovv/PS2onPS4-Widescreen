apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=KILL.SWITCH (E)(SCES-52124)
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

--Force turn on Widescreen
eeObj.WriteMem32(0x0058A454,byte,00000001

--Zoom fix
eeObj.WriteMem32(0x0024d854,0x3c013f25)
end

emuObj.AddVsyncHook(widescreen)