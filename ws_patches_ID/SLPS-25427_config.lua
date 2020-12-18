apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Legendz Gekitou! Saga Battle [NTSC-J] (SLPS-25427)
--comment=Widescreen Hack by Little Gaint

--16:9
eeObj.WriteMem32(0x006DA92C,0x3F533334)
end

emuObj.AddVsyncHook(widescreen)