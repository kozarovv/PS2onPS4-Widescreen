apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=FIFA 2002 - Road to World Cup (J)(SLPS-25069)
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

--X-Fov
--83100c46 180080ac
eeObj.WriteMem32(0x002d132c,0x08030000)

eeObj.WriteMem32(0x000c0000,0x460c1083)
eeObj.WriteMem32(0x000c0004,0x3c013f40)
eeObj.WriteMem32(0x000c0008,0x4481f000)
eeObj.WriteMem32(0x000c000c,0x461e1082)
eeObj.WriteMem32(0x000c0010,0x080b44cc)
end

emuObj.AddVsyncHook(widescreen)