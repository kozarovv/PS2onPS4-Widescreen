apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by ElHecht and Arapapa

--Gameplay
eeObj.WriteMem32(0x002f89f0,0x3c013f81)
eeObj.WriteMem32(0x002f89f8,0x3421de4d)
eeObj.WriteMem32(0x002f8aa0,0xac810000)
eeObj.WriteMem32(0x00159924,0x3c013ec0)

--Menu Fix
--89C0013C 92242134
--40DC013C D8B62134
eeObj.WriteMem32(0x00260f04,0x3c01c04D)
eeObj.WriteMem32(0x00260f08,0x3421B6D8)

--8940013C 92242134
--40D4013C D8B62134
eeObj.WriteMem32(0x00260f10,0x3c01404D)
eeObj.WriteMem32(0x00260f14,0x3421B6D8)

--803f013c 00008144 40780e46
eeObj.WriteMem32(0x002f8c64,0x3c023fab)
eeObj.WriteMem32(0x002f8c68,0x3442aaab)
eeObj.WriteMem32(0x002f8c7c,0xac82003c)
end

emuObj.AddVsyncHook(widescreen)