apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Magical Sports 2001 Pro Yakyuu (J)(SLPS-20111)
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

--X-Fov

eeObj.WriteMem32(0x00231a78,0x08030000)
eeObj.WriteMem32(0x00231a7c,0x00000000)

eeObj.WriteMem32(0x000c0000,0x3c013f40)
eeObj.WriteMem32(0x000c0004,0x4481f000)
eeObj.WriteMem32(0x000c0008,0xc6010068)
eeObj.WriteMem32(0x000c000c,0xc602006c)
eeObj.WriteMem32(0x000c0010,0x461e0843)
eeObj.WriteMem32(0x000c0014,0xe6010068)
eeObj.WriteMem32(0x000c0018,0x0808c6a0)
end

emuObj.AddVsyncHook(widescreen)