apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Pro Evolution Soccer 2007 (SLUS_21464)
--comment=Widescreen hack by No.47

eeObj.WriteMem32(0x0039BAA0,0x3FAAAAAB)
eeObj.WriteMem32(0x0012A59C,0x3C053FAB)
end

emuObj.AddVsyncHook(widescreen)