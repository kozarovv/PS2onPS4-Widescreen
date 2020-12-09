apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Phantasy Star Universe (NTSC-J) (SLPM-66031)
--comment=Widescreen Hack (16:9) by ElHecht (pnach NTSC-J by Arapapa)

--search values
--00007f43 00008043 000060c3 0e01804b (2nd) 20865BB0
--02630046 00000000 00000000 03630146 (2nd. 3rd) 20692874, 20692878
--02630046 00000000 00000000 04000c46 (2nd, 3rd) 206928C0, 206928C4

-- 16:9
eeObj.WriteMem32(0x00865BB0,0x43400000)
eeObj.WriteMem32(0x00692874,0x3c093c02)
eeObj.WriteMem32(0x00692878,0x35293fab)
eeObj.WriteMem32(0x006928C0,0x3c0a0028)
eeObj.WriteMem32(0x006928C4,0xad493d78)

-- 16:9
--eeObj.WriteMem32(0x00865BB0,0x43555555)
--eeObj.WriteMem32(0x00692874,0x3c093c02)
--eeObj.WriteMem32(0x00692878,0x35293f9a)
--eeObj.WriteMem32(0x006928C0,0x3c0a0028)
--eeObj.WriteMem32(0x006928C4,0xad493d78)

--optional cut-scenes black bar removal
--eeObj.WriteMem32(0x00766e44,0x40000000)
end

emuObj.AddVsyncHook(widescreen)