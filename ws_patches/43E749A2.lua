apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9


--X-Fov
eeObj.WriteMem32(0x001a11ac,0x3c014440)

--Render fix
eeObj.WriteMem32(0x00197de4,0x3c013c30)

--------------------------------------------------/
--Zoom
--eeObj.WriteMem32(0x001a10f8,0x3c013fab)
--Y-Fov
--3f9f49f4 -> 3FD46291
--eeObj.WriteMem32(0x00191edc,0x3c013fd4)
--eeObj.WriteMem32(0x00191ee0,0x34216291)
--eeObj.WriteMem32(0x001a11b4,0x3c01c4ab)

end

emuObj.AddVsyncHook(widescreen)