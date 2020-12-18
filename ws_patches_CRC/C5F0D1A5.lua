apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Go Go Golf (E)(SLES-51055)
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

--X-Fov
--803f013c 00088144 0400c0c7 00000000
--aa3f013c abaa2134 00088144 0400c0c7 
eeObj.WriteMem32(0x0010b8f4,0x3c013faa)
eeObj.WriteMem32(0x0010b8f8,0x3421aaab)
eeObj.WriteMem32(0x0010b8fc,0x44810800)
eeObj.WriteMem32(0x0010b900,0xc7c00004)
end

emuObj.AddVsyncHook(widescreen)