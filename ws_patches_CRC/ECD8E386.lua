apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Dark Cloud (J)(SCPS-15004)
--comment=Widescreen Hack


eeObj.WriteMem32(0x0012ce28,0x3c023f40)

----No interlacing by asasega
--38290500 08004264
eeObj.WriteMem32(0x00113b3c,0x00000000)
eeObj.WriteMem32(0x001725f0,0x1000000d)
end

emuObj.AddVsyncHook(widescreen)