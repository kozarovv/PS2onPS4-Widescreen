apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack by Arapapa

--Widescreen hack 16:9

--3D Scene which is proceeding automatically
--803f013c 00188144 9000b17f
eeObj.WriteMem32(0x001a33c4,0x3c013fab)
--003f013c 00088144 080002c6
eeObj.WriteMem32(0x001a3404,0x3c013F05)

--Game Play
--803f013c 00a08144 43480200
eeObj.WriteMem32(0x001a2ecc,0x3c013fab)
--003f013c 00388144 080000c6
eeObj.WriteMem32(0x001a3304,0x3c013F05)

--Render fix (unable to increase than 3F80)
--803f013c 00188144 42080446
--eeObj.WriteMem32(0x0020ceb4,0x3c013fab)

--Odd Zoom (able to avoid "render fix")
--803f013c 00a08144 9653060c
eeObj.WriteMem32(0x0020cb1c,0x3c013FB0)
end

emuObj.AddVsyncHook(widescreen)