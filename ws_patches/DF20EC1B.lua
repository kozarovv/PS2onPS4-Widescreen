apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=XG3: Extreme G Racing (PAL-M4) [SLES-50210]
--comment=Widescreen hack by No.47, converted by FlatOut
eeObj.WriteMem32(0x0022C008,0x3FE38E38)
eeObj.WriteMem32(0x0022C114,0x42AC0000)
end

emuObj.AddVsyncHook(widescreen)