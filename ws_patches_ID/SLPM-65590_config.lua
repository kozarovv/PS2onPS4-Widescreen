apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Densha de Go! Final (J)(SLPM-65590)
--comment=Widescreen Hack by Arapapa

--Widescreen hack 16:9

--Zoom
eeObj.WriteMem32(0x0017a710,0x3c023f40)

--Y-Fov
eeObj.WriteMem32(0x0017a738,0x3c023f2a)

--Render Fix
--eeObj.WriteMem32(0x00138140,0x3c024400)

--Distance Render
--eeObj.WriteMem32(0x001b2454,0x3c024000)

--eeObj.WriteMem32(0x001b3190,0x3c024000)



--eeObj.WriteMem32(0x00129984,0x3c023fa0)

--Render  
--eeObj.WriteMem32(0x0017a794,0x3c0241c0)
end

emuObj.AddVsyncHook(widescreen)