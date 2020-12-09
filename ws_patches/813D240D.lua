apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack by Arapapa

--Widescreen hack 16:9

eeObj.WriteMem32(0x0041cea4,0x0811e474)

eeObj.WriteMem32(0x004791d0,0x46166302)
eeObj.WriteMem32(0x004791d4,0x3c013faa)
eeObj.WriteMem32(0x004791d8,0x3421aaab)
eeObj.WriteMem32(0x004791dc,0x4481f000)
eeObj.WriteMem32(0x004791e0,0x461e6302)
eeObj.WriteMem32(0x004791e4,0x081073aa)
end

emuObj.AddVsyncHook(widescreen)