apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Harry Potter and the Sorcerer's Stone (NTSC-U)
--comment=Widescreen hack by ElHecht

-- 16:9
eeObj.WriteMem32(0x0018da74,0x3c013f40)
eeObj.WriteMem32(0x0018da78,0xac81d5c4)
eeObj.WriteMem32(0x0018da80,0x0c0c17e4)

eeObj.WriteMem32(0x0036D5C4,0x3F400000)

eeObj.WriteMem32(0x002b4258,0x3c013f40)
eeObj.WriteMem32(0x002b425c,0x4481f000)
eeObj.WriteMem32(0x002b426c,0x0c0abc0d)
eeObj.WriteMem32(0x002b4270,0x460d6343)

eeObj.WriteMem32(0x002b453c,0x3c013f40)
eeObj.WriteMem32(0x002b4540,0x4481f000)
eeObj.WriteMem32(0x002b4554,0x0c0abc0d)
eeObj.WriteMem32(0x002b4558,0x460d6343)

eeObj.WriteMem32(0x002af034,0x461e6302)
end

emuObj.AddVsyncHook(widescreen)