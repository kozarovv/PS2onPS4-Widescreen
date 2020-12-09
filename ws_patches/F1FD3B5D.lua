apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Simple 2000 Series Vol. 87: The Nadesico (J)(SLPS-20441)
--comment=Widescreen hack by sergx12 & ElHecht (NTSC-J by Arapapa)

--Widescreen hack 16:9

eeObj.WriteMem32(0x0024f120,0x3c013f40)
end

emuObj.AddVsyncHook(widescreen)