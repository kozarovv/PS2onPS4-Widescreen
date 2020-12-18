apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Jimmy Neutron - Jet Fusion (U)(SLUS-20696)
--comment=Widescreen Hack by Arapapa

--Widescreen hack 16:9

--Zoom
--003f023c 4000bfff 00008244
eeObj.WriteMem32(0x002338a4,0x3c023f1d)

--Y-Fov
--80bf033c 00088244 4800013c
eeObj.WriteMem32(0x00233900,0x3c03bfaa)

--Render fix
--400520c6 003f023c 00088244 
eeObj.WriteMem32(0x00232018,0x3c023f2b)
end

emuObj.AddVsyncHook(widescreen)