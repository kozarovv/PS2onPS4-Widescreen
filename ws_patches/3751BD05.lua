apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen pnach by El_Patas

--Fov
eeObj.WriteMem32(0x002CD40C,0x3C013FD5)

--Zoom
eeObj.WriteMem32(0x003811F8,0x3C013EC0)
end

emuObj.AddVsyncHook(widescreen)