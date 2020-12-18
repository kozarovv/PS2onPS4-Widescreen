apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

--Screen Ratio
--0044053c 00008544 00108444
eeObj.WriteMem32(0x0013b288,0x3c054420)

--eeObj.WriteMem32(0x0013b238,0x3c023e80)

--Scope (Inside View Range)
--803f033c 000083ac
eeObj.WriteMem32(0x00128040,0x3c033fab)

--Vert
--eeObj.WriteMem32(0x0013b260,0x3c034390)
--Zoom
--eeObj.WriteMem32(0x0013b338,0x3c023fab)
--zoom
--eeObj.WriteMem32(0x0013b250,0x3c044416)
--Scope Zoom
--eeObj.WriteMem32(0x001d6dc4,0x3c023f40)
--Scope Ratio Vert
--eeObj.WriteMem32(0x00206e8c,0x3c023ca0)
--Scope and pointer ratio
--db3f043c 7ab68434
--eeObj.WriteMem32(0x00206dfc,0x3c043fd5)
--eeObj.WriteMem32(0x00206e00,0x33484000)
--eeObj.WriteMem32(0x00206ea4,0x3c023d15)
--eeObj.WriteMem32(0x00206ef8,0x3c023d15)
--zoom
--eeObj.WriteMem32(0x0013b214,0x3c033fc0)
--Vert
--eeObj.WriteMem32(0x0013b248,0x3c023eac)
--eeObj.WriteMem32(0x002070b8,0x3c028010)
end

emuObj.AddVsyncHook(widescreen)