apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Global Folktale (NTSC-J)(SLPS-20052)
--comment=Widescreen Hack by Arapapa

--Widescreen hack 16:9

--803f033c 9801013c 907223ac
eeObj.WriteMem32(0x0012d4e4,0x3c033f40)

--b943033c 9801013c 987223ac
eeObj.WriteMem32(0x0012d500,0x3c034440)
end

emuObj.AddVsyncHook(widescreen)