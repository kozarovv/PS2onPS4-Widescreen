apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9


--X-fov (In Squared Ring)
eeObj.WriteMem32(0x00114510,0x3c013f40)

--Event (Zoom)
eeObj.WriteMem32(0x00197f10,0x3c013fab)

--Event (Y-Fov)
eeObj.WriteMem32(0x0018ede0,0x3c0143b4)

--xxx
--eeObj.WriteMem32(0x0018ecb8,0x3c013f40)
----eeObj.WriteMem32(0x00197f10,0x3c013f40)
end

emuObj.AddVsyncHook(widescreen)