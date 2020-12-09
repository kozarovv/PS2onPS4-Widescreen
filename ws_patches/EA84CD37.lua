apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Fighter Maker 2 (U)(SLUS-20524)
--comment=Widescreen hack

--Widescreen hack 16:9

eeObj.WriteMem32(0x002b5764,0x3c013f40)
eeObj.WriteMem32(0x002b5768,0x44810000)
eeObj.WriteMem32(0x002b5770,0x4600c602)
end

emuObj.AddVsyncHook(widescreen)