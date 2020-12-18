apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=widescreen 16:9 hack by 99skull (NTSC-J by Arapapa)

--Widescreen hack 16:9

--803f023c 00008244 00000000 03001646 (1st)
eeObj.WriteMem32(0x00198b54,0x3c023f40)
end

emuObj.AddVsyncHook(widescreen)