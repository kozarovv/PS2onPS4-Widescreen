apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen patch (NTSC-J by Arapapa)

--Widescreen hack 16:9

--aa3f013c abaa2134 00008144
eeObj.WriteMem32(0x0020b388,0x3c013fe3)
eeObj.WriteMem32(0x0020b38c,0x34218e38)
end

emuObj.AddVsyncHook(widescreen)