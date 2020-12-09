apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack by Little Giant

--16:9
eeObj.WriteMem32(0x0012BF00,0x3c013f40)
eeObj.WriteMem32(0x0012BF04,0x4481f000)
eeObj.WriteMem32(0x0012BF20,0x461e2102)


--16:10
--eeObj.WriteMem32(0x0012BEFC,0x3c013f55)
--eeObj.WriteMem32(0x0012BF00,0x34215555)
--eeObj.WriteMem32(0x0012BF04,0x4481f000)
--eeObj.WriteMem32(0x0012BF20,0x461e2102)
end

emuObj.AddVsyncHook(widescreen)