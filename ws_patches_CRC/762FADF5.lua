apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

eeObj.WriteMem32(0x002180c4,0x080ad914)

eeObj.WriteMem32(0x002b6450,0x46010902)
eeObj.WriteMem32(0x002b6454,0x3c013eaa)
eeObj.WriteMem32(0x002b6458,0x4481f000)
eeObj.WriteMem32(0x002b645c,0x461e2102)
eeObj.WriteMem32(0x002b6460,0x08086032)
end

emuObj.AddVsyncHook(widescreen)