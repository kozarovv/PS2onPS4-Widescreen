apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

--Force turn on Native Widescreen (Full boot passing)
eeObj.WriteMem32(0x005a3990,0x24020002)

--Zoom fix
eeObj.WriteMem32(0x004d0668,0x3c013f21)
end

emuObj.AddVsyncHook(widescreen)