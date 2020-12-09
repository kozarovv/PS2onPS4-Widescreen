apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Magical Sports Go Go Golf (J)(SLPS-20037)
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

--X-Fov
--803f013c 00008144 0400c1c7 00000000
--aa3f013c abaa2134 00008144 0400c1c7
eeObj.WriteMem32(0x0010bfc4,0x3c013faa)
eeObj.WriteMem32(0x0010bfc8,0x3421aaab)
eeObj.WriteMem32(0x0010bfcc,0x44810000)
eeObj.WriteMem32(0x0010bfd0,0xc7c10004)
end

emuObj.AddVsyncHook(widescreen)