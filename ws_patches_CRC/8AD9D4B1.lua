apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Bad Boys - Miami Takedown (U)(SLUS-20982)
--comment=Widescreen hack by Arapapa
 
--Gameplay 16:9

--X-Fov
--02631646 540014c6
eeObj.WriteMem32(0x002e5a8c,0x080e68b8)

eeObj.WriteMem32(0x0039a2e0,0x46166302)
eeObj.WriteMem32(0x0039a2e4,0x3c013fa3)
eeObj.WriteMem32(0x0039a2e8,0x4481f000)
eeObj.WriteMem32(0x0039a2ec,0x461e6302)
eeObj.WriteMem32(0x0039a2f0,0x080b96a4)
end

emuObj.AddVsyncHook(widescreen)