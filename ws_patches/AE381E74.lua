apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle= NBA Street (NTSC-U)
--comment= Widescreen Hack by VIRGIN KLM

--Widescreen - 3D Elements
eeObj.WriteMem32(0x00644C48,0x3F955555)
end

emuObj.AddVsyncHook(widescreen)