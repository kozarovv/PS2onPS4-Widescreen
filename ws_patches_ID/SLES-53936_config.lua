apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Snow Rider (E)(SLES-53936)
--comment=Widescreen Hack by Arapapa

--Widescreen hack 16:9

eeObj.WriteMem32(0x001695e4,0x0807adb4)
eeObj.WriteMem32(0x001eb6d0,0x4600bb06)
eeObj.WriteMem32(0x001eb6d4,0x3c013f40)
eeObj.WriteMem32(0x001eb6d8,0x4481f000)
eeObj.WriteMem32(0x001eb6dc,0x461e6303)
eeObj.WriteMem32(0x001eb6e0,0x0805a57a)

end

emuObj.AddVsyncHook(widescreen)