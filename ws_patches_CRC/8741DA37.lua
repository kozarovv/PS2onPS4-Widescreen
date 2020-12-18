apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

--Matrix Hack
eeObj.WriteMem32(0x00124b84,0x3c013f40)
eeObj.WriteMem32(0x00124b88,0x44810000)
eeObj.WriteMem32(0x00124b90,0x4600c602)

--Render Fix
--803f013c 00008144 2d20a003
eeObj.WriteMem32(0x00124ba8,0x3c013f40)
end

emuObj.AddVsyncHook(widescreen)