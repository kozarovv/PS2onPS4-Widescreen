apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Grim Grimoire (E)(SLES-54897)
--comment=Widescreen hack by Arapapa

--Gameplay 16:9

--Zoom
--0040033c 00108344 00000000 (1st)
eeObj.WriteMem32(0x0016fe10,0x3c033fb5)

--Y-Fov
--43d00246 03000246
eeObj.WriteMem32(0x0016fe1c,0x080805f4)

eeObj.WriteMem32(0x002017d0,0x4602d043)
eeObj.WriteMem32(0x002017d4,0x3c013f08)
eeObj.WriteMem32(0x002017d8,0x4481f000)
eeObj.WriteMem32(0x002017dc,0x461e0842)
eeObj.WriteMem32(0x002017e0,0x0805bf88)
end

emuObj.AddVsyncHook(widescreen)