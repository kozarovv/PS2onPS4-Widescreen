apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

--X-Fov
--aa3f023c 8faa4234 00688244 c00201c6
eeObj.WriteMem32(0x001c946c,0x3c023fe3)
eeObj.WriteMem32(0x001c9470,0x34428e33)

--aa3f033c 0c0085ac
eeObj.WriteMem32(0x0022057c,0x3c033fe3)
eeObj.WriteMem32(0x00220584,0x34638e33)
end

emuObj.AddVsyncHook(widescreen)