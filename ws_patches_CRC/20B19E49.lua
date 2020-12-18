apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen fix by nemesis2000 (pnach by nemesis2000)

--widescreen fix
eeObj.WriteMem32(0x001325BC,0x3C013F9D)
eeObj.WriteMem32(0x001325C0,0x44810000)
eeObj.WriteMem32(0x001325C4,0x46006302)
eeObj.WriteMem32(0x001325C8,0x03E00008)
eeObj.WriteMem32(0x001325CC,0xE78C86F8)

eeObj.WriteMem32(0x002434EC,0x0C04C96F)
eeObj.WriteMem32(0x0026FE1C,0x0C04C972)
eeObj.WriteMem32(0x002703F4,0x0C04C972)
end

emuObj.AddVsyncHook(widescreen)