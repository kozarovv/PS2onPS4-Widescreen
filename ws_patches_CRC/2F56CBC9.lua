apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen fix by synce (NTSC-U pnach by flameofrecca)
eeObj.WriteMem32(0x0030536c,0x3c013f40)
eeObj.WriteMem32(0x00305370,0x44810000)
eeObj.WriteMem32(0x00305378,0x4600c602)
--Partial HUD fix
eeObj.WriteMem32(0x0051A000,0x3f400000)
eeObj.WriteMem32(0x0051B000,0x3f400000)
eeObj.WriteMem32(0x0051C000,0x3f400000)
eeObj.WriteMem32(0x0051D000,0x3f400000)
end

emuObj.AddVsyncHook(widescreen)