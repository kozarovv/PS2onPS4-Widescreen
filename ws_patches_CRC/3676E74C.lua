apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by nemesis2000 (pnach by Arapapa)

--gameplay
eeObj.WriteMem32(0x0039a7d0,0x3c043f40)
eeObj.WriteMem32(0x0039a7d4,0x44841800)
eeObj.WriteMem32(0x0039a7d8,0x46030003)
eeObj.WriteMem32(0x0039a7dc,0x460318c3)
eeObj.WriteMem32(0x0039a7e0,0x46031840)
eeObj.WriteMem32(0x0039a854,0xe603007c)

--HUD fix (0500c310 5500013c 803f033c)
eeObj.WriteMem32(0x0039a68c,0x00000000)
eeObj.WriteMem32(0x0039a694,0x3C033f40)

--FMV's fix
eeObj.WriteMem32(0x0041cba4,0x24126c00)
eeObj.WriteMem32(0x0041cbb0,0x24102800)
eeObj.WriteMem32(0x0041cbbc,0x24127600)
eeObj.WriteMem32(0x0041cbc4,0x24101400)

--FMV's fix
--eeObj.WriteMem32(0x0041cba4,0x24127600)
--eeObj.WriteMem32(0x0041cbc4,0x24101400)
end

emuObj.AddVsyncHook(widescreen)