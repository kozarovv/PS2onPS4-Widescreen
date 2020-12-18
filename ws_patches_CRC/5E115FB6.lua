apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen fix by nemesis2000 (pnach by nemesis2000)

--widescreen fix
eeObj.WriteMem32(0x00184A4C,0x3C013F9D)
eeObj.WriteMem32(0x00184A50,0x44810000)
eeObj.WriteMem32(0x00184A54,0x46006302)
eeObj.WriteMem32(0x00184A58,0x03E00008)
eeObj.WriteMem32(0x00184A5C,0xE78C85C8)

eeObj.WriteMem32(0x00253BB8,0x0C061293)
eeObj.WriteMem32(0x00253D6C,0x0C061296)
eeObj.WriteMem32(0x0027B214,0x0C061296)
eeObj.WriteMem32(0x0027B6EC,0x0C061296)
end

emuObj.AddVsyncHook(widescreen)