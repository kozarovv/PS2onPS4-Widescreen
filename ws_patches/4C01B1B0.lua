apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

--Force turn on Internal Widescreen
eeObj.WriteMem32(0x004bf588,0x24020002)

--Zoom fix
--003f013c 00108144 02000146 (2nd)
eeObj.WriteMem32(0x00350750,0x3c013f20)
end

emuObj.AddVsyncHook(widescreen)