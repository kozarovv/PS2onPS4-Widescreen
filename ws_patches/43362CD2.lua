apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by ElHecht and Arapapa

--Widescreen hack 16:9

--Gameplay
--00000000 34800046 00000000
eeObj.WriteMem32(0x002fc470,0x3c013f81)
eeObj.WriteMem32(0x002fc478,0x3421de4d)

--000084e4 0800e003
eeObj.WriteMem32(0x002fc520,0xac810000)

--003f013c 00c08144 (2nd)
eeObj.WriteMem32(0x0015a30c,0x3c013ec0)

--Menu Fix
--89C0013C 92242134
--40DC013C D8B62134
eeObj.WriteMem32(0x00263c08,0x3c01c04D)
eeObj.WriteMem32(0x00263c0c,0x3421B6D8)

--8940013C 92242134
--40D4013C D8B62134
eeObj.WriteMem32(0x00263c14,0x3c01404D)
eeObj.WriteMem32(0x00263c18,0x3421B6D8)

--803f013c 00008144 40780e46
eeObj.WriteMem32(0x002fc6e4,0x3c023fab)
eeObj.WriteMem32(0x002fc6e8,0x3442aaab)
eeObj.WriteMem32(0x002fc6fc,0xac82003c)
end

emuObj.AddVsyncHook(widescreen)