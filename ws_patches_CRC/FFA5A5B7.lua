apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Formula Challenge (E)(SLES-52403)
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9


eeObj.WriteMem32(0x002b907c,0x080c74e8)

eeObj.WriteMem32(0x0031d3a0,0x46070202)
eeObj.WriteMem32(0x0031d3a4,0x3c013f40)
eeObj.WriteMem32(0x0031d3a8,0x4481f000)
eeObj.WriteMem32(0x0031d3ac,0x461e4202)
eeObj.WriteMem32(0x0031d3b0,0x080ae420)
end

emuObj.AddVsyncHook(widescreen)