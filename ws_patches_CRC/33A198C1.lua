apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

--Matrix Hack
eeObj.WriteMem32(0x00102d5c,0x3c013f40)
eeObj.WriteMem32(0x00102d60,0x44810000)
eeObj.WriteMem32(0x00102d68,0x4600c602)

--Render Fix
--803f013c 00008144 2d20a003
eeObj.WriteMem32(0x00102d80,0x3c013f40)
end

emuObj.AddVsyncHook(widescreen)