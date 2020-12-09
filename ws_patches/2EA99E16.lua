apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack by Arapapa

--Widescreen hack 16:9

--X-Fov
--803f063c b80286ac
eeObj.WriteMem32(0x0012bf1c,0x3c063f40)

--Render fix
--a043033c c00283ac
eeObj.WriteMem32(0x0012bf30,0x3c0343e0)
end

emuObj.AddVsyncHook(widescreen)