apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Street Hoops (U)(SLUS-20299)
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

eeObj.WriteMem32(0x00235344,0x3c013f40)
eeObj.WriteMem32(0x00235348,0x44810000)
eeObj.WriteMem32(0x00235350,0x4600c602)

--Render fix
--003f013c 00a08144 (4th)
eeObj.WriteMem32(0x00214a58,0x3c013f2b)
end

emuObj.AddVsyncHook(widescreen)