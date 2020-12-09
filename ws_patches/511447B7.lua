apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

eeObj.WriteMem32(0x0033c0e4,0x080d34d8)
eeObj.WriteMem32(0x0034d360,0x460328c2)
eeObj.WriteMem32(0x0034d364,0x3c013f40)
eeObj.WriteMem32(0x0034d368,0x4481f000)
eeObj.WriteMem32(0x0034d36c,0x461e18c2)
eeObj.WriteMem32(0x0034d370,0x080cf03a)
end

emuObj.AddVsyncHook(widescreen)