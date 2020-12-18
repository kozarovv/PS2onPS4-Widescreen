apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack by Arapapa

--Widescreen hack 16:9


--X-Fov
--00000000 00000000 83ad0046 00000000
--403f013c 00f08144 83ad0046 82b51e46
eeObj.WriteMem32(0x003baf8c,0x3c013f40)
eeObj.WriteMem32(0x003baf90,0x4481f000)
eeObj.WriteMem32(0x003baf98,0x461eb582)
end

emuObj.AddVsyncHook(widescreen)