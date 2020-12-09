apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Home Alone (E)(SLES-54469)
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

eeObj.WriteMem32(0x00181460,0x08030000)

eeObj.WriteMem32(0x000c0000,0x46150502)
eeObj.WriteMem32(0x000c0004,0x3c013faa)
eeObj.WriteMem32(0x000c0008,0x3421aaab)
eeObj.WriteMem32(0x000c000c,0x4481f000)
eeObj.WriteMem32(0x000c0010,0x461ea502)
eeObj.WriteMem32(0x000c0014,0x08060519)
end

emuObj.AddVsyncHook(widescreen)