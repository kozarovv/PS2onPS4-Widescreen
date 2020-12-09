apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Pride FC - Fighting Championships (E)(SLES-51371)
--comment=Widescreen hack by Arapapa

--Widescreen Hack 16:9

--Matrix Hack
eeObj.WriteMem32(0x00103094,0x3c013f40)
eeObj.WriteMem32(0x00103098,0x44810000)
eeObj.WriteMem32(0x001030a0,0x4600c602)
end

emuObj.AddVsyncHook(widescreen)