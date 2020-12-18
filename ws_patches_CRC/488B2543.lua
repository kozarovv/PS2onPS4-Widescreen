apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by Little Giant

--gameplay 16:9
eeObj.WriteMem32(0x00144DD8,0x3c013f40)
eeObj.WriteMem32(0x00144E00,0x4481F000)
eeObj.WriteMem32(0x00144E10,0x461e2102)
eeObj.WriteMem32(0x00144E14,0xe464a360)

--render fix
eeObj.WriteMem32(0x00144EC4,0x3C063F40)
eeObj.WriteMem32(0x00144F1C,0x3C063F40)
end

emuObj.AddVsyncHook(widescreen)