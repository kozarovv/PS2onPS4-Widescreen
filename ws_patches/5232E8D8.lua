apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack by Arapapa

--Widescreen hack 16:9

--X-Fov
--0000803f 0af67f3f 17d87f3f (1st)
eeObj.WriteMem32(0x001e98d8,0x3faaaaab)
end

emuObj.AddVsyncHook(widescreen)