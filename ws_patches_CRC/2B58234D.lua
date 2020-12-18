apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by El_Patas

--Gameplay 16:9
eeObj.WriteMem32(0x00181FE8,0x3C013F1E)
eeObj.WriteMem32(0x001829A8,0x3C013ED1)

--Render fix
eeObj.WriteMem32(0x001828C4,0x3C013F60)
end

emuObj.AddVsyncHook(widescreen)