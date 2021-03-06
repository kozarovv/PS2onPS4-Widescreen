apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Spectral Force - Radical Elements (J)(SLPM-65669)
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

--X-Fov (2D & 3D)
eeObj.WriteMem32(0x0014a784,0x3c023f19)
eeObj.WriteMem32(0x0014a788,0x3442999a)
eeObj.WriteMem32(0x0015be08,0x3c023f19)
eeObj.WriteMem32(0x0015be0c,0x3442999a)
eeObj.WriteMem32(0x00161640,0x3c023f19)
eeObj.WriteMem32(0x00161644,0x3442999a)
eeObj.WriteMem32(0x0016872c,0x3c023f19)
eeObj.WriteMem32(0x00168730,0x3442999a)
eeObj.WriteMem32(0x0016d9e0,0x3c023f19)
eeObj.WriteMem32(0x0016d9e4,0x3442999a)
eeObj.WriteMem32(0x0016e08c,0x3c023f19)
eeObj.WriteMem32(0x0016e090,0x3442999a)
eeObj.WriteMem32(0x0016f3ec,0x3c023f19)
eeObj.WriteMem32(0x0016f3f0,0x3442999a)
eeObj.WriteMem32(0x00187ed8,0x3c023f19)
eeObj.WriteMem32(0x00187edc,0x3442999a)
eeObj.WriteMem32(0x0019ebe8,0x3c023f19)
eeObj.WriteMem32(0x0019ebec,0x3442999a)
eeObj.WriteMem32(0x001ae434,0x3c023f19)
eeObj.WriteMem32(0x001ae438,0x3442999a)
eeObj.WriteMem32(0x001ae7f0,0x3c023f19)
eeObj.WriteMem32(0x001ae7f4,0x3442999a)
eeObj.WriteMem32(0x001aeb58,0x3c023f19)
eeObj.WriteMem32(0x001aeb5c,0x3442999a)
eeObj.WriteMem32(0x001aecbc,0x3c023f19)
eeObj.WriteMem32(0x001aecc0,0x3442999a)
eeObj.WriteMem32(0x001b40b8,0x3c023f19)
eeObj.WriteMem32(0x001b40bc,0x3442999a)
eeObj.WriteMem32(0x001b43ac,0x3c023f19)
eeObj.WriteMem32(0x001b43b0,0x3442999a)
eeObj.WriteMem32(0x001b4a64,0x3c023f19)
eeObj.WriteMem32(0x001b4a68,0x3442999a)
eeObj.WriteMem32(0x001b5000,0x3c023f19)
eeObj.WriteMem32(0x001b5004,0x3442999a)
eeObj.WriteMem32(0x001b63ac,0x3c023f19)
eeObj.WriteMem32(0x001b63b0,0x3442999a)
eeObj.WriteMem32(0x001b69e8,0x3c023f19)
eeObj.WriteMem32(0x001b69ec,0x3442999a)
eeObj.WriteMem32(0x001b83e0,0x3c023f19)
eeObj.WriteMem32(0x001b83e4,0x3442999a)
eeObj.WriteMem32(0x001b87f8,0x3c023f19)
eeObj.WriteMem32(0x001b87fc,0x3442999a)
eeObj.WriteMem32(0x001b8d9c,0x3c023f19)
eeObj.WriteMem32(0x001b8da0,0x3442999a)
eeObj.WriteMem32(0x001b92f0,0x3c023f19)
eeObj.WriteMem32(0x001b92f4,0x3442999a)
eeObj.WriteMem32(0x001b953c,0x3c023f19)
eeObj.WriteMem32(0x001b9540,0x3442999a)
eeObj.WriteMem32(0x001b9820,0x3c023f19)
eeObj.WriteMem32(0x001b9824,0x3442999a)
eeObj.WriteMem32(0x001b9c38,0x3c023f19)
eeObj.WriteMem32(0x001b9c3c,0x3442999a)
eeObj.WriteMem32(0x001b9e74,0x3c023f19)
eeObj.WriteMem32(0x001b9e78,0x3442999a)
eeObj.WriteMem32(0x001c1c40,0x3c023f19)
eeObj.WriteMem32(0x001c1c44,0x3442999a)
eeObj.WriteMem32(0x001c1f1c,0x3c023f19)
eeObj.WriteMem32(0x001c1f20,0x3442999a)
eeObj.WriteMem32(0x001c2038,0x3c023f19)
eeObj.WriteMem32(0x001c203c,0x3442999a)
eeObj.WriteMem32(0x001c228c,0x3c023f19)
eeObj.WriteMem32(0x001c2290,0x3442999a)
eeObj.WriteMem32(0x001c4d30,0x3c023f19)
eeObj.WriteMem32(0x001c4d34,0x3442999a)
eeObj.WriteMem32(0x001cf95c,0x3c023f19)
eeObj.WriteMem32(0x001cf960,0x3442999a)
eeObj.WriteMem32(0x001d0790,0x3c023f19)
eeObj.WriteMem32(0x001d0794,0x3442999a)
eeObj.WriteMem32(0x001d1e7c,0x3c023f19)
eeObj.WriteMem32(0x001d1e80,0x3442999a)
eeObj.WriteMem32(0x001d216c,0x3c023f19)
eeObj.WriteMem32(0x001d2170,0x3442999a)
eeObj.WriteMem32(0x001d2d48,0x3c023f19)
eeObj.WriteMem32(0x001d2d4c,0x3442999a)
eeObj.WriteMem32(0x001d36ec,0x3c023f19)
eeObj.WriteMem32(0x001d36f0,0x3442999a)
eeObj.WriteMem32(0x002037b4,0x3c023f19)
eeObj.WriteMem32(0x002037b8,0x3442999a)
eeObj.WriteMem32(0x0022e7b0,0x3c023f19)
eeObj.WriteMem32(0x0022e7b4,0x3442999a)
eeObj.WriteMem32(0x0022e7e0,0x3c023f19)
eeObj.WriteMem32(0x0022e7e4,0x3442999a)
eeObj.WriteMem32(0x0022e810,0x3c023f19)
eeObj.WriteMem32(0x0022e814,0x3442999a)
eeObj.WriteMem32(0x0023b874,0x3c033f19)
eeObj.WriteMem32(0x0023b878,0x3463999a)
eeObj.WriteMem32(0x0023c6c4,0x3c023f19)
eeObj.WriteMem32(0x0023c6c8,0x3442999a)
eeObj.WriteMem32(0x0023c764,0x3c023f19)
eeObj.WriteMem32(0x0023c768,0x3442999a)
eeObj.WriteMem32(0x0023c804,0x3c023f19)
eeObj.WriteMem32(0x0023c808,0x3442999a)
eeObj.WriteMem32(0x0023c8a4,0x3c023f19)
eeObj.WriteMem32(0x0023c8a8,0x3442999a)
eeObj.WriteMem32(0x0023c954,0x3c023f19)
eeObj.WriteMem32(0x0023c958,0x3442999a)
eeObj.WriteMem32(0x0023c99c,0x3c023f19)
eeObj.WriteMem32(0x0023c9a0,0x3442999a)
eeObj.WriteMem32(0x0023f4d0,0x3c023f19)
eeObj.WriteMem32(0x0023f4d4,0x3442999a)

--2D X-position
eeObj.WriteMem32(0x00233ca4,0x24637400)
eeObj.WriteMem32(0x0023c6ec,0x24647400)
eeObj.WriteMem32(0x0023c78c,0x24647400)
eeObj.WriteMem32(0x0023c82c,0x24647400)
eeObj.WriteMem32(0x0023c8cc,0x24647400)
eeObj.WriteMem32(0x0023c97c,0x24437400)
eeObj.WriteMem32(0x0023f4f0,0x24637400)
eeObj.WriteMem32(0x00241afc,0x24037400)
eeObj.WriteMem32(0x00241e34,0x24037400)
end

emuObj.AddVsyncHook(widescreen)