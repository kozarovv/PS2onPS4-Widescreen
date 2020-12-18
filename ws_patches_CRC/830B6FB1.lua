apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen fix by flameofrecca
eeObj.WriteMem32(0x00481148,0x420e0000)
eeObj.WriteMem32(0x001dea60,0x3c023fab)
eeObj.WriteMem32(0x001188dc,0x3c013fab)

--FMV fix
eeObj.WriteMem32(0x0032aba4,0xbe3851ec)
eeObj.WriteMem32(0x0032abac,0xbe3851ec)
eeObj.WriteMem32(0x0032abb4,0x3f970a3d)
eeObj.WriteMem32(0x0032abbc,0x3f970a3d)
end

emuObj.AddVsyncHook(widescreen)