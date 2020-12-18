apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

--Select menu
eeObj.WriteMem32(0x0012a7e4,0x3c013f40)

--Cut Scene
eeObj.WriteMem32(0x0012a9f0,0x3c013f40)

--Game Play
eeObj.WriteMem32(0x0012b284,0x3c013f40)
end

emuObj.AddVsyncHook(widescreen)