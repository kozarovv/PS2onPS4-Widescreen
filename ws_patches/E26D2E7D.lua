apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Evergrace II [NTSC-J] (SLPS-25044)
--comment=Widescreen hack
eeObj.WriteMem32(0x00101ca8,0x3c013f40)
end

emuObj.AddVsyncHook(widescreen)