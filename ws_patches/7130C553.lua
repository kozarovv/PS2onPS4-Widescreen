apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack

--hor fov (note: HUD is left)
eeObj.WriteMem32(0x0026FC70,0x3F400000)
--hud fix
eeObj.WriteMem32(0x00105d2c,0x3c0243f0)
eeObj.WriteMem32(0x0010612c,0x3c0243f0)
eeObj.WriteMem32(0x0010713c,0x3c0243f0)
eeObj.WriteMem32(0x00110620,0x3c0243f0)
eeObj.WriteMem32(0x00112b90,0x3c0243f0)
eeObj.WriteMem32(0x0011516c,0x3c0243f0)
eeObj.WriteMem32(0x0016aab0,0x3c0243f0)
eeObj.WriteMem32(0x002359bc,0x3c0243f0)
end

emuObj.AddVsyncHook(widescreen)