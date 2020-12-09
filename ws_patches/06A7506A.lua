apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack by Arapapa

--Widescreen hack 16:9

--Zoom
eeObj.WriteMem32(0x00129340,0x3c034340)

--Y-Fov
eeObj.WriteMem32(0x00129354,0x3c023f9f)
eeObj.WriteMem32(0x00129358,0x344349e9)

--Render Fix
eeObj.WriteMem32(0x0013193c,0x3c023fb0)

--Menu
--eeObj.WriteMem32(0x00128ea4,0x3c033f19)
--eeObj.WriteMem32(0x00128eb0,0x3462999a)

--2D Objects X-Fov (Need to modify too many things)
--eeObj.WriteMem32(0x001C0A98,0x3faaaaab)

--2D Objects Position
--eeObj.WriteMem32(0x001c0a68,0x3e700000)
end

emuObj.AddVsyncHook(widescreen)