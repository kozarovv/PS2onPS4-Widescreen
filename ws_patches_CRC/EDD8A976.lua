apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Jikkyou World Soccer 2000 (J)(SLPM-62002)
--comment=Widescreen hack by Arapapa

--Wide Screen 16:9
eeObj.WriteMem32(0x002029d4,0x3c013f40)
eeObj.WriteMem32(0x002029d8,0x44810000)
eeObj.WriteMem32(0x002029e0,0x4600c602)

 
end

emuObj.AddVsyncHook(widescreen)