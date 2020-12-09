apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Kuusen (J)(SLPS-20046)
--comment=Widescreen Hack by Arapapa

--Widescreen hack 16:9

--X-Fov
eeObj.WriteMem32(0x001dddb0,0x08043588)
eeObj.WriteMem32(0x001dddb4,0x00000000)

eeObj.WriteMem32(0x0010d620,0x3c013f40)
eeObj.WriteMem32(0x0010d624,0x4481f000)
eeObj.WriteMem32(0x0010d628,0xc6010068)
eeObj.WriteMem32(0x0010d62c,0xc602006c)
eeObj.WriteMem32(0x0010d630,0x461e0843)
eeObj.WriteMem32(0x0010d634,0xe6010068)
eeObj.WriteMem32(0x0010d638,0x0807776e)
end

emuObj.AddVsyncHook(widescreen)