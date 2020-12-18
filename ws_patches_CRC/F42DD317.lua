apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Run Like Hell (J)(SLPM-65603)
--comment=Widescreen hack by ElHecht (NTSC-J by Arapapa)

--Widescreen hack 16:9

--00000000 32001446 00000000
eeObj.WriteMem32(0x00110bc0,0x3c013f40)
eeObj.WriteMem32(0x00110bc8,0x4481f000)

--86050046 50200a0c (3rd)
eeObj.WriteMem32(0x001af498,0x461e0583)

-- HUD-Fix
--7800686c 4100013c
eeObj.WriteMem32(0x0016fdd0,0x3c1b3f80)
eeObj.WriteMem32(0x0016fdd8,0x449bf000)
end

emuObj.AddVsyncHook(widescreen)