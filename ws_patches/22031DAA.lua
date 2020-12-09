apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by nemesis2000 (pnach by nemesis2000)

--gameplay
eeObj.WriteMem32(0x004f6f20,0x46010082)
eeObj.WriteMem32(0x004f6f24,0xe7a20058)

--cutscenes
eeObj.WriteMem32(0x004f72f0,0x46010082)
eeObj.WriteMem32(0x004f72f4,0xe7a20068)
end

emuObj.AddVsyncHook(widescreen)