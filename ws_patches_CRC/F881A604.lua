apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Dance Summit 2001: Bust A Move (J)(SLPM-62029)
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9


eeObj.WriteMem32(0x0025fa54,0x3c013f40)
eeObj.WriteMem32(0x0025fa58,0x44810000)
eeObj.WriteMem32(0x0025fa60,0x4600c602)

eeObj.WriteMem32(0x00238f18,0x3c01c3b0)
eeObj.WriteMem32(0x00238f30,0x3c0143b0)

--Y-Fov
--eeObj.WriteMem32(0x0020c1ec,0x3c014300)
end

emuObj.AddVsyncHook(widescreen)