apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Moto GP 3 (E)(SCES-50982)
--comment=Widescreen Hack by Arapapa

--Widescreen hack 16:9

--X-Fov
--803f013c 00008144 (10th)
eeObj.WriteMem32(0x001141cc,0x3c013f40)

--Render fix

--a043013c 00688144 06ab0046
eeObj.WriteMem32(0x001a4d50,0x3c014330)

--9c3f013c f5282134 00088144 (1st)
eeObj.WriteMem32(0x001da050,0x3c014010)
eeObj.WriteMem32(0x001da054,0x34210000)

--a043013c 00688144 06b30046
eeObj.WriteMem32(0x0027a9b8,0x3c014330)

----HUD speedometer fix
--803f013c 00008144
eeObj.WriteMem32(0x001b7d70,0x3c013f40)
eeObj.WriteMem32(0x001b81e8,0x3c013f40)
eeObj.WriteMem32(0x001b8868,0x3c013f40)

------------------------------
--Always Turn on / off Wide option (Funny :D)
--eeObj.WriteMem32(0x0034E258,0x00000100)
end

emuObj.AddVsyncHook(widescreen)