apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Monster Rancher EVO (NTSC-U) WS patch
--Widescreen patch (16:9)
eeObj.WriteMem32(0x004F05EC,0x3F19999A)
eeObj.WriteMem32(0x00591854,0x43D55555)
end

emuObj.AddVsyncHook(widescreen)