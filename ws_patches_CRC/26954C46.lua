apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen converted from NTSC fix by nemesis2000 (pnach by Some Chump)

--widescreen fix
eeObj.WriteMem32(0x001324BC,0x3C013F9D)
eeObj.WriteMem32(0x001324C0,0x44810000)
eeObj.WriteMem32(0x001324C4,0x46006302)
eeObj.WriteMem32(0x001324C8,0x03E00008)
eeObj.WriteMem32(0x001324CC,0xE78C87F8)

eeObj.WriteMem32(0x002485dc,0x0C04C92F)
eeObj.WriteMem32(0x002764AC,0x0C04C932)
eeObj.WriteMem32(0x00276A7C,0x0C04C932)
end

emuObj.AddVsyncHook(widescreen)