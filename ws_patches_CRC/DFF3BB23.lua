apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Zapper (E)(SLES-50974)
--comment=Widescreen Hack by Arapapa

--Widescreen hack 16:9
--Y-Fov
eeObj.WriteMem32(0x001fad48,0x3c013ed0)

--Zoom
eeObj.WriteMem32(0x001fae98,0x3c013f20)

--Render fix
eeObj.WriteMem32(0x001f9ff8,0x3c013f30)
end

emuObj.AddVsyncHook(widescreen)