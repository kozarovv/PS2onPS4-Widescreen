apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=The Document of Metal Gear Solid 2 (J)(SLPM-65184)
--comment=Widescreen hack by Esppiral (NTSC-J by Arapapa)

--3D Model view fix
--803f013c00b08144380047b4
eeObj.WriteMem32(0x0011f580,0x3c013f40)
end

emuObj.AddVsyncHook(widescreen)