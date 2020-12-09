apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

eeObj.WriteMem32(0x00213454,0x3c013f40)
eeObj.WriteMem32(0x00213458,0x44810000)
eeObj.WriteMem32(0x00213460,0x4600c602)

--------------------------------------------------
--Zoom
--803f013c 00008144 2d20a003 (3rd)
--eeObj.WriteMem32(0x00213478,0x3c013fab)

--Y-Fov (Except background Picture (Cloud)
--efeeee3f -> f5491f40
--eeObj.WriteMem32(0x0038ad08,0x401f49f5)
end

emuObj.AddVsyncHook(widescreen)