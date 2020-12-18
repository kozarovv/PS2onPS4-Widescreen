apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack by El_Patas

--Both fov 16:9
eeObj.WriteMem32(0x001B098C,0x3C01464F)

--Vert fov 16:9
eeObj.WriteMem32(0x001B0B40,0x3C013FB5)
eeObj.WriteMem32(0x001B0B44,0x3421EA28)

--Render fix
eeObj.WriteMem32(0x001B0B20,0x3C01464F)
end

emuObj.AddVsyncHook(widescreen)