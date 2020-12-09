apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack by Arapapa

--Widescreen 16:9

--X-Fov
eeObj.WriteMem32(0x00107160,0x3c023fe3)
eeObj.WriteMem32(0x00107164,0x34428e39)

--Font Fix (Although the spacing between letters should be narrowed. But it is better to read Korean without correcting.)
eeObj.WriteMem32(0x001b4058,0x3c02417f)
eeObj.WriteMem32(0x001b405c,0x3442b000)
eeObj.WriteMem32(0x001b4060,0x44820000)

--HUD Fix (Need push to the right. However, there is not much difference without modification.)
eeObj.WriteMem32(0x001b5168,0x3c02417f)


end

emuObj.AddVsyncHook(widescreen)