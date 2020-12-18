apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=NTSC-J Widescreen Hack by synce
--eeObj.WriteMem32(0x004dfb50,0x3fe28f5c)
--eeObj.WriteMem32(0x004dfbb0,0x3fe28f5c)

eeObj.WriteMem32(0x002a90d8,0x3c013fe3)
eeObj.WriteMem32(0x002a90dc,0x34218e2a)

--hud fix (font, mini map and etc)(cause some problem)
--eeObj.WriteMem32(0x005b4a80,0x3f400000)
--or
--eeObj.WriteMem32(0x005b4aa0,0x45400000)
end

emuObj.AddVsyncHook(widescreen)