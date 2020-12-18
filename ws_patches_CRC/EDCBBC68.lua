apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Mr. Bean (E)(SLES-54666)
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

eeObj.WriteMem32(0x001b6ba4,0x08093ae8)

eeObj.WriteMem32(0x0024eba0,0x4600bb06)
eeObj.WriteMem32(0x0024eba4,0x3c013faa)
eeObj.WriteMem32(0x0024eba8,0x3421aaab)
eeObj.WriteMem32(0x0024ebac,0x4481f000)
eeObj.WriteMem32(0x0024ebb0,0x461e6302)
eeObj.WriteMem32(0x0024ebb4,0x0806daea)
end

emuObj.AddVsyncHook(widescreen)