apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by by Arapapa

--Widescreen hack 16:9

eeObj.WriteMem32(0x0021eef4,0x3c013f40)
eeObj.WriteMem32(0x0021eef8,0x44810000)
eeObj.WriteMem32(0x0021ef00,0x4600c602)

--Render Fix
eeObj.WriteMem32(0x00220f70,0x3c013fab)
end

emuObj.AddVsyncHook(widescreen)