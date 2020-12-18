apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Army Men - Air Attack - Blade's Revenge (E)(SLES-50233)
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

--fov
--803f013c 00208144 2001b1ff 
eeObj.WriteMem32(0x00142b14,0x3c014003)

--zoom
--803f013c 00488144 40600146
eeObj.WriteMem32(0x0018749c,0x3c013ee3)
end

emuObj.AddVsyncHook(widescreen)