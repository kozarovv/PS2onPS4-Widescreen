apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=International Superstar Soccer (E)(SLES-50039)
--comment=Widescreen Hack by Arapapa

--Widescreen hack 16:9

--X-Fov
eeObj.WriteMem32(0x00102cac,0x3c013f40)
eeObj.WriteMem32(0x00102cb0,0x44810000)
eeObj.WriteMem32(0x00102cb8,0x4600c602)
end

emuObj.AddVsyncHook(widescreen)