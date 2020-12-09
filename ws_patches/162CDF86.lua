apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

--Matrix Hack
eeObj.WriteMem32(0x00122ed4,0x3c013f40)
eeObj.WriteMem32(0x00122ed8,0x44810000)
eeObj.WriteMem32(0x00122ee0,0x4600c602)

--Render fix
eeObj.WriteMem32(0x00122ef8,0x3c013f40)
end

emuObj.AddVsyncHook(widescreen)