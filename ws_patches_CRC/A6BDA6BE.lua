apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Monster Lab (U)(SLUS-21838)
--comment=Widescreen Hack by Arapapa

--Widescreen hack 16:9

--X-Fov
--02051446 e40100e6
eeObj.WriteMem32(0x001857f8,0x080430d4)

eeObj.WriteMem32(0x0010c350,0x46140502)
eeObj.WriteMem32(0x0010c354,0x3c013faa)
eeObj.WriteMem32(0x0010c358,0x3421aaab)
eeObj.WriteMem32(0x0010c35c,0x4481f000)
eeObj.WriteMem32(0x0010c360,0x461ea502)
eeObj.WriteMem32(0x0010c364,0x080615ff)
end

emuObj.AddVsyncHook(widescreen)