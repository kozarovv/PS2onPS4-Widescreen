apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Agassi Tennis Generation (U)(SLUS-20446)
--comment=Widescreen hack by Arapapa

--Widescreen 16:9

--X-Fov
eeObj.WriteMem32(0x001fe098,0x0806e628)
eeObj.WriteMem32(0x001b98a0,0x3c013f40)
eeObj.WriteMem32(0x001b98a4,0x4481f000)
eeObj.WriteMem32(0x001b98a8,0xc6010068)
eeObj.WriteMem32(0x001b98ac,0xc602006c)
eeObj.WriteMem32(0x001b98b0,0x461e0843)
eeObj.WriteMem32(0x001b98b4,0xe6010068)
eeObj.WriteMem32(0x001b98b8,0x0807f828)
end

emuObj.AddVsyncHook(widescreen)