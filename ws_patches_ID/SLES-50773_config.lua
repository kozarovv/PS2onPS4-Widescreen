apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Disney's Donald Duck - PK (E)(SLES-50773)
--comment=Widescreen Hack by Arapapa

--Widescreen hack 16:9

--X-Fov
--000080bf 0000803f 000080bf 00000000
eeObj.WriteMem32(0x003317f0,0xbf400000)
end

emuObj.AddVsyncHook(widescreen)