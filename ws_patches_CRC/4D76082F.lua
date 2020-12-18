apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen pnach by El_Patas (Only works for 3D characters, not for prerendered backgrounds)

eeObj.WriteMem32(0x003AE764,0x3FC6D3A0)
eeObj.WriteMem32(0x003AEB14,0x3FC6D3A0)
end

emuObj.AddVsyncHook(widescreen)