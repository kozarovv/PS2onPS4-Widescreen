apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=NTSC-J Widescreen Hack by parotaku
eeObj.WriteMem32(0x01938FA8,0x3F1FBE77)

--FMV's fix by nemesis2000
eeObj.WriteMem32(0x018bce88,0x3c026fa0)
eeObj.WriteMem32(0x018bced8,0x34028260)

--black borders fix by nemesis2000
eeObj.WriteMem32(0x018f2b14,0x3c030000)
end

emuObj.AddVsyncHook(widescreen)