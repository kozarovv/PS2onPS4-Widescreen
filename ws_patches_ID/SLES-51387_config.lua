apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=World Racing (E)(SLES-51387)
--comment=Widescreen Hack by Arapapa

--Widescreen hack 16:9

--Martix hack
eeObj.WriteMem32(0x0022dd5c,0x3c013f40)
eeObj.WriteMem32(0x0022dd60,0x44810000)
eeObj.WriteMem32(0x0022dd68,0x4600c602)

--Render fix
eeObj.WriteMem32(0x002016cc,0x3c013f2b)
end

emuObj.AddVsyncHook(widescreen)