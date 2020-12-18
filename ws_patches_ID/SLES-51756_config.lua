apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Batman - Rise of Sin Tzu (E)(SLES-51756)
--comment=Widescreen Hack by Arapapa

--Widescreen hack 16:9

--X-Fov
eeObj.WriteMem32(0x004b0b28,0x3f5a7408)

--Render Fix
eeObj.WriteMem32(0x00309008,0x3c023f40)
end

emuObj.AddVsyncHook(widescreen)