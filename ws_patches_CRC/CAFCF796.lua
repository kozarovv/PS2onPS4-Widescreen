apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Simple 2000 Series Ultimate Vol. 02 - Edit Racing (J)(SLPM-65107)
--comment=Widescreen hack by El_Patas & Arapapa

--Wide Screen 16:9

eeObj.WriteMem32(0x00213db8,0x08090324)

eeObj.WriteMem32(0x00240c90,0x3c013f40)
eeObj.WriteMem32(0x00240c94,0x4481f000)
eeObj.WriteMem32(0x00240c98,0xc6010068)
eeObj.WriteMem32(0x00240c9c,0xc602006c)
eeObj.WriteMem32(0x00240ca0,0x461e0843)
eeObj.WriteMem32(0x00240ca4,0xe6010068)
eeObj.WriteMem32(0x00240ca8,0x08084f70)
end

emuObj.AddVsyncHook(widescreen)