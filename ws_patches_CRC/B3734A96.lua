apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Evolution Skateboarding (K)(SLKA-25015)
--comment=Widescreen Hack by Arapapa

--Widescreen hack 16:9

--Zoom
--0040033c 42ce0346 
eeObj.WriteMem32(0x001a81a4,0x3c033fc0)

--Y-Fov
--43200346 100022e6
eeObj.WriteMem32(0x001a81ec,0x080e5778)
eeObj.WriteMem32(0x00395de0,0x46032043)
eeObj.WriteMem32(0x00395de4,0x3c013f40)
eeObj.WriteMem32(0x00395de8,0x4481f000)
eeObj.WriteMem32(0x00395dec,0x461e0843)
eeObj.WriteMem32(0x00395df0,0x0806a07c)



end

emuObj.AddVsyncHook(widescreen)