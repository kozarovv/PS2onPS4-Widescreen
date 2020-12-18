apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hacks by Aced14

--16:9 Widescreen
eeObj.WriteMem32(0x00103B14,0x00003F40)

--16:10 Widescreen (Normal)
--eeObj.WriteMem32(0x00103B10,0x08048D59)
--eeObj.WriteMem32(0x00103B14,0x00003F55)
--eeObj.WriteMem32(0x0012355C,0x08048D5D)
--eeObj.WriteMem32(0x00123564,0x34425555)
--eeObj.WriteMem32(0x00123568,0x8FA3008C)
--eeObj.WriteMem32(0x0012356C,0x08040EC6)
--eeObj.WriteMem32(0x00123574,0x1000FFF9)

--16:10 Widescreen (Ultra)
--eeObj.WriteMem32(0x00103B14,0x00003F40)
--eeObj.WriteMem32(0x00103B1C,0x00003ED3)
--eeObj.WriteMem32(0x00103B20,0x0000F7CF)
end

emuObj.AddVsyncHook(widescreen)