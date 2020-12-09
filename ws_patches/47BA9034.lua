apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack (pnach by Arapapa)

--16:9(03000000 b81e953f 00000000)
eeObj.WriteMem32(0x002f5234,0x3FC6D395)

--No interlacing by asasega
--01003126 2d206002 2d380000
eeObj.WriteMem32(0x002b0b68,0x64040001)
end

emuObj.AddVsyncHook(widescreen)