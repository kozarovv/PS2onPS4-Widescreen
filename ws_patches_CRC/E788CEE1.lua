apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Turbo Trucks (E)(SLES-54195)
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

eeObj.WriteMem32(0x00166bcc,0x080800a4)
eeObj.WriteMem32(0x00200290,0x4600bb06)
eeObj.WriteMem32(0x00200294,0x3c013f40)
eeObj.WriteMem32(0x00200298,0x4481f000)
eeObj.WriteMem32(0x0020029c,0x461e6303)
eeObj.WriteMem32(0x002002a0,0x08059af4)
end

emuObj.AddVsyncHook(widescreen)