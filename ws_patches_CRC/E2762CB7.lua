apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Herdy Gerdy (U)(SLUS-20231)
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

--Zoom
eeObj.WriteMem32(0x0012cca0,0x3c013f20)

--Render fix
eeObj.WriteMem32(0x0012cef8,0x3c013f40)

--vert
eeObj.WriteMem32(0x00260a34,0x3c013fab)
eeObj.WriteMem32(0x00260a44,0x3c0143c0)
end

emuObj.AddVsyncHook(widescreen)