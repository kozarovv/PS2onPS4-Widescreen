apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Monster Farm [NTSC-J] [SLPS-25035]
--comment=Widescreen Hack by Arapapa

--Widescreen hack 16:9

--X-Fov
eeObj.WriteMem32(0x002d160c,0x3c013f40)
eeObj.WriteMem32(0x002d1610,0x44810000)
eeObj.WriteMem32(0x002d1618,0x4600c602)

--Render fix
eeObj.WriteMem32(0x0027c20c,0x3c0143d7)
end

emuObj.AddVsyncHook(widescreen)