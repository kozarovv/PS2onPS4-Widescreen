apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by Arapapa

--Gameplay 16:9


--X-Fov
eeObj.WriteMem32(0x0030be78,0x3c013f40)

--Render fix (Gameplay)
eeObj.WriteMem32(0x002bdf3c,0x3c013fb0)

--menu
--eeObj.WriteMem32(0x002d4f04,0x3c0143bb)

--eeObj.WriteMem32(0x002fee98,0x3c0138f0)

--eeObj.WriteMem32(0x002bdf3c,0x3c014000)


--xx
--eeObj.WriteMem32(0x002d4424,0x3c014000)
--eeObj.WriteMem32(0x002d4650,0x3c014000)
--eeObj.WriteMem32(0x0030b49c,0x3c013fb0)
end

emuObj.AddVsyncHook(widescreen)