apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by ElHecht (NTSC-K by Arapapa)

-- 16:9
-- 00000000 00000000 c3750046 00000000
eeObj.WriteMem32(0x002af210,0x3c013f40)
eeObj.WriteMem32(0x002af214,0x4481f000)
eeObj.WriteMem32(0x002af21c,0x461ebdc2)

-- hardware rendering fix
eeObj.WriteMem32(0x003589a8,0x3c013e49)

-- optional hud fix
--eeObj.WriteMem32(0x002ae1d4,0x3c013f40)
--eeObj.WriteMem32(0x002ae1d8,0x4481f000)
--eeObj.WriteMem32(0x002ae1e4,0x461e0842)
end

emuObj.AddVsyncHook(widescreen)