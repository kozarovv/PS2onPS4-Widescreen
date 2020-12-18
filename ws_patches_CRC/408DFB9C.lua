apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gameplay based on ElHecht's values
eeObj.WriteMem32(0x00211b60,0x1600001f)
eeObj.WriteMem32(0x00211b64,0x8e5001ec)
eeObj.WriteMem32(0x00211b68,0xc621000c)
eeObj.WriteMem32(0x00211b6c,0x3c02bf00)
eeObj.WriteMem32(0x00211b70,0x44820000)
eeObj.WriteMem32(0x00211b74,0x0c049ac4)
eeObj.WriteMem32(0x00211b78,0x46010302)
eeObj.WriteMem32(0x00211b7c,0x3c013f40)
eeObj.WriteMem32(0x00211b80,0x44810800)
eeObj.WriteMem32(0x00211b84,0x46010003)

eeObj.WriteMem32(0x00211be8,0x1000ffdf)

--rfix by ElHecht
eeObj.WriteMem32(0x00256234,0x3c033f2b)

--black borders fix
eeObj.WriteMem32(0x001f4b58,0x3c020000)
eeObj.WriteMem32(0x001f4a68,0x3c030000)
eeObj.WriteMem32(0x001f4ad8,0x3c020000)

--resolution fix (upped from 512x448 to 640x448) by nemesis2000
eeObj.WriteMem32(0x002125b4,0x24020280)

--480p
eeObj.WriteMem32(0x0010cedc,0x3c050000)
eeObj.WriteMem32(0x0010cee4,0x3c060050)
eeObj.WriteMem32(0x0010ceec,0x3c070001)
eeObj.WriteMem32(0x0010d1ac,0x3c090010)

--FMV's fix  by nemesis2000
eeObj.WriteMem32(0x0021114c,0x24020188)
eeObj.WriteMem32(0x00211150,0x14480003)
eeObj.WriteMem32(0x00211154,0x00000000)
eeObj.WriteMem32(0x00211158,0x240801c0)
eeObj.WriteMem32(0x0021115c,0x24060000)
eeObj.WriteMem32(0x00211160,0x10200006)
eeObj.WriteMem32(0x00211164,0xe7b40000)
eeObj.WriteMem32(0x00211168,0x44870800)
eeObj.WriteMem32(0x0021116c,0x44850000)
eeObj.WriteMem32(0x00211170,0x46800920)
eeObj.WriteMem32(0x00211174,0x10000005)
eeObj.WriteMem32(0x00211178,0x468000a0)
eeObj.WriteMem32(0x0021117c,0x44850800)
eeObj.WriteMem32(0x00211180,0x44870000)
eeObj.WriteMem32(0x00211184,0x46800920)
eeObj.WriteMem32(0x00211188,0x468000a0)
eeObj.WriteMem32(0x0021118c,0x0106082a)
eeObj.WriteMem32(0x00211190,0x10200006)
eeObj.WriteMem32(0x00211194,0x00000000)
eeObj.WriteMem32(0x00211198,0x44880800)
eeObj.WriteMem32(0x0021119c,0x44860000)
eeObj.WriteMem32(0x002111a0,0x46800960)
eeObj.WriteMem32(0x002111a4,0x10000005)
eeObj.WriteMem32(0x002111a8,0x468000e0)
eeObj.WriteMem32(0x002111ac,0x44860800)
eeObj.WriteMem32(0x002111b0,0x44880000)
eeObj.WriteMem32(0x002111b4,0x46800960)
eeObj.WriteMem32(0x002111b8,0x468000e0)
eeObj.WriteMem32(0x002111bc,0x8c8301e8)
eeObj.WriteMem32(0x002111c0,0x46021043)
end

emuObj.AddVsyncHook(widescreen)