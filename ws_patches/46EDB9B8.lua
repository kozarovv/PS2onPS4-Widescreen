apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack by Arapapa

--Widescreen hack 16:9

--X-Fov
eeObj.WriteMem32(0x001581cc,0x0806a584)
eeObj.WriteMem32(0x001a9610,0xc4600068)
eeObj.WriteMem32(0x001a9614,0x3c013f40)
eeObj.WriteMem32(0x001a9618,0x4481f000)
eeObj.WriteMem32(0x001a961c,0x461e0003)
eeObj.WriteMem32(0x001a9620,0xe4800068)
eeObj.WriteMem32(0x001a9624,0x08056074)
end

emuObj.AddVsyncHook(widescreen)