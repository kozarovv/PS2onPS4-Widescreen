apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

--X-Fov
eeObj.WriteMem32(0x001033bc,0x3c013f40)
eeObj.WriteMem32(0x001033c0,0x44810000)
eeObj.WriteMem32(0x001033c8,0x4600c602)

--Render fix
eeObj.WriteMem32(0x0017b6dc,0x3c0243e0)
eeObj.WriteMem32(0x00189fb4,0x3c0243e0)
end

emuObj.AddVsyncHook(widescreen)