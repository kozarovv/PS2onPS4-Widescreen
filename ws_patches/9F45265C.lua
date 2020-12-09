apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Rocky (E)(SLES-51208)
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

--X-Fov
eeObj.WriteMem32(0x00244AA0,0x3f400000)

--Rener fix
eeObj.WriteMem32(0x002449B0,0x43e00000)

--No Interlacing patch by Prafull
--fix shaking issue ingame
--38290500 08004264
eeObj.WriteMem32(0x0010c624,0x00000000)


end

emuObj.AddVsyncHook(widescreen)