apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Victorious Boxers - Ippo's Road to Glory (PAL)(SLES-50280)
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9 

--X-Fov (In Squared Ring)
eeObj.WriteMem32(0x00114530,0x3c013f40)

--Event Zoom
eeObj.WriteMem32(0x0019a948,0x3c013fab)

--Event Y-Fov
eeObj.WriteMem32(0x00191138,0x3c0143b4)
end

emuObj.AddVsyncHook(widescreen)