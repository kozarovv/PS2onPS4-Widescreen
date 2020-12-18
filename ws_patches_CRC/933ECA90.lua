apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Mouse Trophy (E)(SLES-52525)
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

--X-Fov
eeObj.WriteMem32(0x0013fe08,0x468010a0)
eeObj.WriteMem32(0x0013fe0c,0x3c014455)
eeObj.WriteMem32(0x0013fe10,0x34215555)
end

emuObj.AddVsyncHook(widescreen)