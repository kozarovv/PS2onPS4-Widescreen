apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack
--Widescreen hack 16:9

--Matrix Hack
eeObj.WriteMem32(0x0016a864,0x3c013f40)
eeObj.WriteMem32(0x0016a868,0x44810000)
eeObj.WriteMem32(0x0016a870,0x4600c602)
end

emuObj.AddVsyncHook(widescreen)