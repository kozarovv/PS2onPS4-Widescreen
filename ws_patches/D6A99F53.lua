apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=24 - The Game (E)(SCES-53358)
--comment=Widescreen Hack by Arapapa

--Widescreen hack 16:9


--X-Fov
--eeObj.WriteMem32(0x0046042c,0x3c013fe3)
--eeObj.WriteMem32(0x00460430,0x34218e2a)

--Zoom Fix (When turn on the Widescreen option)
eeObj.WriteMem32(0x002fbf20,0x3c020000)
end

emuObj.AddVsyncHook(widescreen)