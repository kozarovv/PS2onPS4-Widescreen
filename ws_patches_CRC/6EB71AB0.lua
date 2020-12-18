apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack by Little Giant

--16:9
eeObj.WriteMem32(0x0012C610,0x3c013f40)
eeObj.WriteMem32(0x0012C614,0x4481f000)
eeObj.WriteMem32(0x0012C630,0x461e2102)


--16:10
--eeObj.WriteMem32(0x0012C60C,0x3c013f55)
--eeObj.WriteMem32(0x0012C610,0x34215555)
--eeObj.WriteMem32(0x0012C614,0x4481f000)
--eeObj.WriteMem32(0x0012C630,0x461e2102)
end

emuObj.AddVsyncHook(widescreen)