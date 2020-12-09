apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack by ElHecht, Arapapa

--16:9 (2044013c 00088144 07010046)
eeObj.WriteMem32(0x002e0a28,0x3c014455)

--FMV fix
--e043013c 00608144 00108244
eeObj.WriteMem32(0x002c610c,0x3c0143a8)

--Font
--eeObj.WriteMem32(0x002dde68,0x3c013ac0)
end

emuObj.AddVsyncHook(widescreen)