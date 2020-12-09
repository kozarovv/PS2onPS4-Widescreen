apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack
--Ported to PAL by Nik1895
eeObj.WriteMem32(0x007D1088,0x3F199999)
eeObj.WriteMem32(0x00847E98,0x3FAAAAAA)
end

emuObj.AddVsyncHook(widescreen)