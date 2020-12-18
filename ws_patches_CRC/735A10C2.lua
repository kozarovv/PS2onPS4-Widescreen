apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack
--16:9
eeObj.WriteMem32(0x0012ef50,0x3c023f40)
--renderfix
eeObj.WriteMem32(0x0012f748,0x3c02442b)
--black borders's fix (optional)
eeObj.WriteMem32(0x00150460,0xa780a3c0)
--alternate 16:9
--eeObj.WriteMem32(0x004EA3D4,0x3f400000)
end

emuObj.AddVsyncHook(widescreen)