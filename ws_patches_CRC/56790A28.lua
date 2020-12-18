apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack by Arapapa

--Widescreen hack 16:9

--X-Fov
eeObj.WriteMem32(0x002652c4,0x3c014440)

--Render fix
eeObj.WriteMem32(0x003f2490,0x40000000)

--Black Bar fix
eeObj.WriteMem32(0x00188978,0x00000000)

--Menu.... Character Position (Not Fixed Address)
--eeObj.WriteMem32(0x006db7d8,0x39000000)
--eeObj.WriteMem32(0x006db7e0,0x3e3f0000)
end

emuObj.AddVsyncHook(widescreen)