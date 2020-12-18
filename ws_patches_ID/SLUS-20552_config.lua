apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Grand Theft Auto - Vice City (SLUS_20552) / Ver 2.01
--comment=Widescreen hack

eeObj.WriteMem32(0x0013233c,0x3c013f9d)
eeObj.WriteMem32(0x00132340,0x44810000)
eeObj.WriteMem32(0x00132344,0x46006302)
eeObj.WriteMem32(0x00132348,0x03e00008)
eeObj.WriteMem32(0x0013234c,0xe78c86f8)

eeObj.WriteMem32(0x0024846c,0x0c04c8cf)
eeObj.WriteMem32(0x0027541c,0x0c04c8d2)
eeObj.WriteMem32(0x002759ec,0x0c04c8d2)
end

emuObj.AddVsyncHook(widescreen)