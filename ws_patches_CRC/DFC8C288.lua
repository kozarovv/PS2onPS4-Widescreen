apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Reveal Fantasia [NTSC-J] (SLPS-25094)
--comment=Widescreen hack by Little Giant

--16:9
eeObj.WriteMem32(0x00107cec,0x3c123ec0)
eeObj.WriteMem32(0x00107cf0,0x4492c000)
eeObj.WriteMem32(0x00107d08,0x46180842)

--render fix
eeObj.WriteMem32(0x00107550,0x3c013f2b)
end

emuObj.AddVsyncHook(widescreen)