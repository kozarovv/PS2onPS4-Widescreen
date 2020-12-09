apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack by Little Giant

--16:9
eeObj.WriteMem32(0x0011bd4c,0x3c013f40)
eeObj.WriteMem32(0x0011bd74,0x4481F000)
eeObj.WriteMem32(0x002F8198,0x080cf79a)
eeObj.WriteMem32(0x0033de5c,0x080cf7a0)
eeObj.WriteMem32(0x0033de68,0x461e0fc3)
eeObj.WriteMem32(0x0033de6c,0x46010043)
eeObj.WriteMem32(0x0033de70,0x461e0842)
eeObj.WriteMem32(0x0033de74,0xe61f0068)
eeObj.WriteMem32(0x0033de78,0x080be068)
end

emuObj.AddVsyncHook(widescreen)