apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack by Little Gaint (NTSC-K by Arapapa)

--3ef0a3d7 3f91eb85 (2nd)
eeObj.WriteMem32(0x00F1A388,0x3F206D3A)

--3f91eb85 3ff1eb85
eeObj.WriteMem32(0x00F20CD4,0x3F5AE148)
end

emuObj.AddVsyncHook(widescreen)