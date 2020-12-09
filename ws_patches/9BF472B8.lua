apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Silent Hill 4 - The Room [NTSC-J] (SLPM-65574)
--comment=NTSC-J Widescreen Hack by synce
eeObj.WriteMem32(0x0045a2b4,0x3f400000)
eeObj.WriteMem32(0x0045a2b8,0x3f15fd8b)

--FMV fix by pelvicthrustman
eeObj.WriteMem32(0x002f7954,0x3c020320)
eeObj.WriteMem32(0x002f7998,0x34021820)
end

emuObj.AddVsyncHook(widescreen)