apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=2002 FIFA World Cup Korea Japan (E)(SLES-50796)
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

--X-Fov
--83100c46 180080ac
eeObj.WriteMem32(0x003085ac,0x08030000)

eeObj.WriteMem32(0x000c0000,0x460c1083)
eeObj.WriteMem32(0x000c0004,0x3c013f40)
eeObj.WriteMem32(0x000c0008,0x4481f000)
eeObj.WriteMem32(0x000c000c,0x461e1082)
eeObj.WriteMem32(0x000c0010,0x080c216c)
end

emuObj.AddVsyncHook(widescreen)