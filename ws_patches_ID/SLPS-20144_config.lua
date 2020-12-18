apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=The Seed (J)(SLPS-20144)
--comment=Widescreen hack by Arapapa

--Widescreen 16:9

--X-Fov
eeObj.WriteMem32(0x0013913c,0x3c013f40)
eeObj.WriteMem32(0x0017646c,0x3c013f40)

--Render fix
eeObj.WriteMem32(0x001349fc,0x3c014460)
eeObj.WriteMem32(0x00142970,0x3c014460)

--Font Zoom
--eeObj.WriteMem32(0x00119d20,0x3c0141f0)
end

emuObj.AddVsyncHook(widescreen)