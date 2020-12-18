apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by ElHecht

-- 16:9
eeObj.WriteMem32(0x002af358,0x3c013f40)
eeObj.WriteMem32(0x002af35c,0x4481f000)
eeObj.WriteMem32(0x002af364,0x461ebdc2)

-- hardware rendering fix
eeObj.WriteMem32(0x00358ae8,0x3c013e49)

-- optional hud fix
--eeObj.WriteMem32(0x002ae1d4,0x3c013f40)
--eeObj.WriteMem32(0x002ae1d8,0x4481f000)
--eeObj.WriteMem32(0x002ae1e4,0x461e0842)
end

emuObj.AddVsyncHook(widescreen)