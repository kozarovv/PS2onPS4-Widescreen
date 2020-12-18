apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack by Arapapa

--Widescreen hack 16:9

eeObj.WriteMem32(0x001bc24c,0x3c013f40)
eeObj.WriteMem32(0x001bc250,0x44810000)
eeObj.WriteMem32(0x001bc258,0x4600c602)

--Render fix
eeObj.WriteMem32(0x00186b64,0x3c0140a7)
end

emuObj.AddVsyncHook(widescreen)