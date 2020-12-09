apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack by Arapapa

--Widescreen hack 16:9

-- Zoom fix (Internal Widescreen Option) 
eeObj.WriteMem32(0x00388f28,0x3c013f80)

--X-Fov 
--403f013c 00008144 00000000 (4th)
eeObj.WriteMem32(0x00388f58,0x3c013f10)
end

emuObj.AddVsyncHook(widescreen)