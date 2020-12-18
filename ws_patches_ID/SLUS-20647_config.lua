apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Wallace & Gromit in Project Zoo (U)(SLUS-20647)
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

--X-Fov
--4040013c00088144 01b01846
eeObj.WriteMem32(0x00235f20,0x3c014080)
end

emuObj.AddVsyncHook(widescreen)