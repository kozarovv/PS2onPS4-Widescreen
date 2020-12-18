apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Defender (E)(SLES-50714)
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

--X-Fov
eeObj.WriteMem32(0x0010bc34,0x3c013fd5)
eeObj.WriteMem32(0x00137940,0x3c013fd5)
eeObj.WriteMem32(0x00184ba8,0x3c013fd5)
eeObj.WriteMem32(0x001c9efc,0x3c013fd5)
eeObj.WriteMem32(0x001c9fb4,0x3c013fd5)
end

emuObj.AddVsyncHook(widescreen)