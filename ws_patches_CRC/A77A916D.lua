apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Street Hoops (E)(SLES-50862)
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

eeObj.WriteMem32(0x00236fe4,0x3c013f40)
eeObj.WriteMem32(0x00236fe8,0x44810000)
eeObj.WriteMem32(0x00236ff0,0x4600c602)

--Render fix
eeObj.WriteMem32(0x002163e0,0x3c013f2b)


end

emuObj.AddVsyncHook(widescreen)