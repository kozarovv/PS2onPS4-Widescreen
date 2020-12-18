apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=New Roommania - Porori Seishun (NTSC-J)(SLPM-65235)
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

--0000803f 0000803f 0000803f 00002044
eeObj.WriteMem32(0x005C07DC,0x3f400000)
end

emuObj.AddVsyncHook(widescreen)