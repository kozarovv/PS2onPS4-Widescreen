apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=World War Zero - IronStorm (E)(SLES-51924)
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

--Force turn on Widedscreen
eeObj.WriteMem32(0x003393DC,0x00000001)
eeObj.WriteMem32(0x00366E50,0x00000001)
eeObj.WriteMem32(0x003393D8,0x3fe38e39)

--Zoom fix
eeObj.WriteMem32(0x0010b990,0x3c013f40)
end

emuObj.AddVsyncHook(widescreen)