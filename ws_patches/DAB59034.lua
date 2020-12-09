apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Army Men - RTS (PAL-Unk)(SLES-50706)
--comment=Widescreen Hack by Arapapa

--Widescreen hack 16:9

--3D Scene which is proceeding automatically
--803f013c 00188144 9000b17f
eeObj.WriteMem32(0x001a37f4,0x3c013fab)
--003f013c 00088144 080002c6
eeObj.WriteMem32(0x001a3834,0x3c013f05)

--Game Play 
--803f013c 00a08144 43480200
eeObj.WriteMem32(0x001a32fc,0x3c013fab)
--003f013c 00388144 080000c6
eeObj.WriteMem32(0x001a3734,0x3c013f05)

--Render fix
--803f013c 00188144 43200146
--eeObj.WriteMem32(0x0020d2ec,0x3c013fab)

--Odd Zoom (able to avoid rendering fix)
--803f013c 00a08144
eeObj.WriteMem32(0x0020cf5c,0x3c013fb0)
end

emuObj.AddVsyncHook(widescreen)