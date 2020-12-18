apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack  by Arapapa

--Widescreen hack 16:9

--X-Fov
--000017e6 280000ae
eeObj.WriteMem32(0x002ffbf4,0x08030000)

eeObj.WriteMem32(0x000c0000,0x3c013f40)
eeObj.WriteMem32(0x000c0004,0x4481f000)
eeObj.WriteMem32(0x000c0008,0x461ebdc2)
eeObj.WriteMem32(0x000c000c,0xe6170000)
eeObj.WriteMem32(0x000c0010,0x080bfefe)


--Render fix
--3003b0df 803f013c 00a88144 
eeObj.WriteMem32(0x00327ac0,0x3c013f40)

----------------
--X-Fov (Menu)
--eeObj.WriteMem32(0x00327930,0x3c013f40)
--X-Fov
--803f013c 00688144 0045013c 00788144
--eeObj.WriteMem32(0x00327998,0x3c013f40)
end

emuObj.AddVsyncHook(widescreen)