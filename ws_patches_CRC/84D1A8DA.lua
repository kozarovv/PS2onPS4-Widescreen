apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack (pnach by Arapapa)

--16:9(03000000 b81e953f 00000000)
eeObj.WriteMem32(0x002db814,0x3FC6D395)
end

emuObj.AddVsyncHook(widescreen)