apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=MTV Pimp My Ride - Street Racing (E)(SLES-55511)
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

eeObj.WriteMem32(0x003459e8,0x08030000)

eeObj.WriteMem32(0x000c0000,0x46012802)
eeObj.WriteMem32(0x000c0004,0x3c013f40)
eeObj.WriteMem32(0x000c0008,0x4481f000)
eeObj.WriteMem32(0x000c000c,0x461e0002)
eeObj.WriteMem32(0x000c0010,0x080d167b)
end

emuObj.AddVsyncHook(widescreen)