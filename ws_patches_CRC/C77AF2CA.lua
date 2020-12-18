apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Sly Cooper (NTSC) (SCUS-97198)
--comment = Widescreen hack by nemesis2000-- Fixed by PsxFan107

--Widescreen by nemesis2000
eeObj.WriteMem32(0x001436B0,0x3C013FDD)
eeObj.WriteMem32(0x001436B4,0x3421A51D)

--Bug Fix
eeObj.WriteMem32(0x0012B818,0x10000003)
eeObj.WriteMem32(0x0015EECC,0x00000000)
eeObj.WriteMem32(0x0018F798,0x00000000)
eeObj.WriteMem32(0x001E9C98,0x00000000)
end

emuObj.AddVsyncHook(widescreen)