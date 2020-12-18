apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by No.47

--single player
eeObj.WriteMem32(0x00332694,0x43C6C000)
eeObj.WriteMem32(0x003326B4,0x43960000)
eeObj.WriteMem32(0x00332EC4,0x3F1D0364)

--split screen
eeObj.WriteMem32(0x00332690,0x43951000)
eeObj.WriteMem32(0x00332ED0,0x3F1D0364)
eeObj.WriteMem32(0x00332ED4,0x3F1D0364)

--menu
eeObj.WriteMem32(0x00332F80,0x3F199999)

--(*) improved chase cam that shows the whole car as in other Ridge Racer games, instead of only the upper half
--(*) replace 43960000 by 43C6C000 for the original chase cam
end

emuObj.AddVsyncHook(widescreen)