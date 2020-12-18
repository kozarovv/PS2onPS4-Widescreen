apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Neopets - The Darkest Faerie (NTSC-U)(SCUS-97367)
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

--zoom
eeObj.WriteMem32(0x0032D120,0x43C00000)

--fov
eeObj.WriteMem32(0x0043c860,0x44155555)
end

emuObj.AddVsyncHook(widescreen)