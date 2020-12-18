apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
Burnout 3: Takedown (SLUS-21050) 
Widescreen Fix (v2.0) by Aero_

-- FOV (16:9)

eeObj.WriteMem32(0x00665ECD,byte,01 -- enables widescreen FOV values
eeObj.WriteMem32(0x004E0A38,0x3FAAAAAB)
eeObj.WriteMem32(0x004E0C70,0x3FE38E39)
eeObj.WriteMem32(0x004E0C7C,0x3FE38E39)
eeObj.WriteMem32(0x004E0C80,0x40638E39)

-- HUD (16:9)

eeObj.WriteMem32(0x004E105C,0x3A99999A)
eeObj.WriteMem32(0x006682B0,0x42A00000)
eeObj.WriteMem32(0x00669B30,0x42A00000)
eeObj.WriteMem32(0x004B7688,0x3F98F5C3)
eeObj.WriteMem32(0x004B7678,0x3F98F5C3)
eeObj.WriteMem32(0x004B7658,0xBE47AE14)
eeObj.WriteMem32(0x004B7668,0xBE47AE14)
eeObj.WriteMem32(0x004CA660,0x44555555)
eeObj.WriteMem32(0x004CA640,0x44555555)
eeObj.WriteMem32(0x004CA650,0x44555555)
eeObj.WriteMem32(0x004CA638,0xc2d70000)
eeObj.WriteMem32(0x004CA658,0xc2d70000)

eeObj.WriteMem32(0x003D7238,0x3C024456)
eeObj.WriteMem32(0x003D70BC,0x08121630)
eeObj.WriteMem32(0x004858C0,0x3C08C2D7)
eeObj.WriteMem32(0x004858C4,0x44880800)
eeObj.WriteMem32(0x004858C8,0x080F5C30)
eeObj.WriteMem32(0x003D72F4,0x08121633)
eeObj.WriteMem32(0x004858CC,0x3C19C2D7)
eeObj.WriteMem32(0x004858D0,0x44991000)
eeObj.WriteMem32(0x004858D4,0x080F5CBE)

-- Menus (16:9)

eeObj.WriteMem32(0x0030D7E4,short,43F0 -- Menu Width -- 16:9 = 480
eeObj.WriteMem32(0x0030D834,0x08121636)
eeObj.WriteMem32(0x004858D8,0xE4830008)
eeObj.WriteMem32(0x004858DC,0x3C1942A0)
eeObj.WriteMem32(0x004858E0,0x44991800)
eeObj.WriteMem32(0x004858E4,0xE4830000)
eeObj.WriteMem32(0x004858E8,0x080C360E)

eeObj.WriteMem32(0x004D1570,0x44555555)
eeObj.WriteMem32(0x004D1568,0xC2D70000)

eeObj.WriteMem32(0x0031B180,short,4456 -- Top Border Width -- 16:9 = 854
eeObj.WriteMem32(0x0031B1F4,0x0812163B)
eeObj.WriteMem32(0x004858EC,0x3C190000)
eeObj.WriteMem32(0x004858F0,0x44993800)
eeObj.WriteMem32(0x004858F4,0xE4870000)
eeObj.WriteMem32(0x004858F8,0xC4850004)
eeObj.WriteMem32(0x004858FC,0x080C6C7E)

eeObj.WriteMem32(0x0038AE00,short,4456 -- Bottom Border Width -- 16:9 = 854
eeObj.WriteMem32(0x0038AE38,short,4456 -- Bottom Border Width -- 16:9 = 854
eeObj.WriteMem32(0x0038AE4C,0x08121640)
eeObj.WriteMem32(0x00485900,0x3C19C2D7)
eeObj.WriteMem32(0x00485904,0xAFB90068)
eeObj.WriteMem32(0x00485908,0x080E2B94)
eeObj.WriteMem32(0x0038AE04,0x08121643)
eeObj.WriteMem32(0x0048590C,0x3C193E00)
eeObj.WriteMem32(0x00485910,0xAFB90078)
eeObj.WriteMem32(0x00485914,0x080E2B82)

eeObj.WriteMem32(0x0031D6E4,short,4456 -- Checkerboard Width -- 16:9 = 854
eeObj.WriteMem32(0x0031D73C,short,4456 -- Checkerboard Width -- 16:9 = 854
eeObj.WriteMem32(0x0031D7E8,short,4456 -- Checkerboard Width -- 16:9 = 854
eeObj.WriteMem32(0x0031D790,short,4456 -- Checkerboard Width -- 16:9 = 854
eeObj.WriteMem32(0x0031D840,short,4456 -- Checkerboard Width -- 16:9 = 854
eeObj.WriteMem32(0x0031D6F8,0x08121646)
eeObj.WriteMem32(0x00485918,0x3C193E00)
eeObj.WriteMem32(0x0048591C,0xAFB90110)
eeObj.WriteMem32(0x00485920,0x080C75BF)
eeObj.WriteMem32(0x0031D750,0x08121649)
eeObj.WriteMem32(0x00485924,0x3C193E00)
eeObj.WriteMem32(0x00485928,0xAFB900F8)
eeObj.WriteMem32(0x0048592C,0x080C75D5)
eeObj.WriteMem32(0x0031D7FC,0x0812164C)
eeObj.WriteMem32(0x00485930,0x3C193E00)
eeObj.WriteMem32(0x00485934,0xAFB900C8)
eeObj.WriteMem32(0x00485938,0x080C7600)
eeObj.WriteMem32(0x0031D7A4,0x0812164F)
eeObj.WriteMem32(0x0048593C,0x3C193E00)
eeObj.WriteMem32(0x00485940,0xAFB900E0)
eeObj.WriteMem32(0x00485944,0x080C75EA)
eeObj.WriteMem32(0x0031D854,0x08121652)
eeObj.WriteMem32(0x00485948,0x3C193E00)
eeObj.WriteMem32(0x0048594C,0xAFB900B0)
eeObj.WriteMem32(0x00485950,0x080C7616)

eeObj.WriteMem32(0x0031DA20,short,4456 -- Loading Background Width -- 16:9 = 854
eeObj.WriteMem32(0x0031DA40,0x08121655)
eeObj.WriteMem32(0x00485954,0x3C19C2D7)
eeObj.WriteMem32(0x00485958,0xAFB901D8)
eeObj.WriteMem32(0x0048595C,0x080C7691)
end

emuObj.AddVsyncHook(widescreen)