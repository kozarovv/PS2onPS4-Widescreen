apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack by Arapapa

--Widescreen hack 16:9

--X-Fov
--8044013c 00088144 21208300
eeObj.WriteMem32(0x00268854,0x3c014440)

--Zoom
--eeObj.WriteMem32(0x00268780,0x3c013fab)

--Y-Fov
--eeObj.WriteMem32(0x00268860,0x3c01c4ab)

--Render Fix
--abaaaa3e 8988083e (2nd)
eeObj.WriteMem32(0x003fb630,0x40000000)

--Menu.... Character Position (Not Fixed Address)
--eeObj.WriteMem32(0x006db7d8,0x39000000)
--eeObj.WriteMem32(0x006db7e0,0x3e3f0000)

--Black Bar Fix
8642013c 67662134 00008144
eeObj.WriteMem32(0x00188d18,0x00000000)
end

emuObj.AddVsyncHook(widescreen)