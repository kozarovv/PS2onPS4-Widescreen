apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Agent Hugo - Hula Holiday (E)(SLES-55365)
--comment=Widescreen hack by Arapapa

--Widescreen 16:9

--X-Fov
--00000000 00000000 83180546
eeObj.WriteMem32(0x003075e8,0x3c013f40)
eeObj.WriteMem32(0x003075ec,0x4481f000)
eeObj.WriteMem32(0x003075fc,0x461e1082)
end

emuObj.AddVsyncHook(widescreen)