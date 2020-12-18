apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Mashed - Drive to Survive (E)(SLES-52446)
--comment=Widescreen Hack by Arapapa

--Widescreen hack 16:9

--X-Fov
--403f013c 00008144 00000000 e42360e4
eeObj.WriteMem32(0x001f269c,0x3c013f10)
end

emuObj.AddVsyncHook(widescreen)