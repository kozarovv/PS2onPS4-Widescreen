apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by Arapapa

--Wide Screen 16:9

--Matrix hack
eeObj.WriteMem32(0x0010287c,0x3c013f40)
eeObj.WriteMem32(0x00102880,0x44810000)
eeObj.WriteMem32(0x00102888,0x4600c602)

--Render fix
--803f023c 00108244 0000a1c6 (st)
eeObj.WriteMem32(0x0025c7b4,0x3c023fab)
end

emuObj.AddVsyncHook(widescreen)