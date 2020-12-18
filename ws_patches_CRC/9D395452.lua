apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=XGRA - Extreme G Racing Association (E)(SLES-51636)
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

--Zoom
eeObj.WriteMem32(0x0019d5dc,0x3c013ec0)

--Y-Fov
eeObj.WriteMem32(0x0019d5fc,0x3c013faa)
eeObj.WriteMem32(0x0019d600,0x3421aaab)
eeObj.WriteMem32(0x0019d608,0x4481f000)
eeObj.WriteMem32(0x0019d60c,0x461ebdc2)
end

emuObj.AddVsyncHook(widescreen)