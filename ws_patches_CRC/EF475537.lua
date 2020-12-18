apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Teitoku no Ketsudan IV with Power-Up Kit (J)(SLPM-62470)
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

--Menu and DEMO
--003f013c 00088144 00108044
eeObj.WriteMem32(0x00310000,0x3c013ec0)
--2044033c 00688244 00608344 7448023c
eeObj.WriteMem32(0x002a5178,0x3c034455)
eeObj.WriteMem32(0x002a51c8,0x3c034455)
eeObj.WriteMem32(0x002a4f84,0x3c034455)
eeObj.WriteMem32(0x002a50c0,0x3c034455)

--Strategy Screen
--2044023c 00088244 f043033c 
eeObj.WriteMem32(0x001d9c28,0x3c024455)

--Tactical Screen
--2044023c 00608244 780120c6
eeObj.WriteMem32(0x00216c70,0x3c024455)
--2044033c 00688244 00608344 f448023c (1st)
eeObj.WriteMem32(0x0026ec2c,0x3c034455)

--------------------------------------------------/
--eeObj.WriteMem32(0x002f949c,0x08030000)
--eeObj.WriteMem32(0x000c0000,0x46006346)
--eeObj.WriteMem32(0x000c0004,0x3c013fab)
--eeObj.WriteMem32(0x000c0008,0x4481f000)
--eeObj.WriteMem32(0x000c000c,0x461e6b42)
--eeObj.WriteMem32(0x000c0010,0x080be528)


--Font Fix
--eeObj.WriteMem32(0x0022aa5c,0x08030000)
--eeObj.WriteMem32(0x000c0000,0x00000000)
--eeObj.WriteMem32(0x000c0004,0x46006546)
--eeObj.WriteMem32(0x000c0008,0x46006d06)
--eeObj.WriteMem32(0x000c000c,0x3c013f50)
--eeObj.WriteMem32(0x000c0010,0x4481f000)
--eeObj.WriteMem32(0x000c0014,0x461ead42)
--eeObj.WriteMem32(0x000c0018,0x0808aa98)

end

emuObj.AddVsyncHook(widescreen)