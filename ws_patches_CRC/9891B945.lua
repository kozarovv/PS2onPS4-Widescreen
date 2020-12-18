apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Obscure II (SCKA-20114)
--comment=Widescreen hack by nemesis2000 and ElHecht (NTSC-K by Arapapa)

-- 16:9
--02020746 50004324
eeObj.WriteMem32(0x001728b4,0x0810bb54)
eeObj.WriteMem32(0x001728b8,0x00000000)

eeObj.WriteMem32(0x0042ed50,0x3c013f40)
eeObj.WriteMem32(0x0042ed54,0x4481f000)
eeObj.WriteMem32(0x0042ed58,0x46070202)
eeObj.WriteMem32(0x0042ed5c,0x24430050)
eeObj.WriteMem32(0x0042ed60,0x461e4202)
eeObj.WriteMem32(0x0042ed64,0x0805ca2e)

-- Render-Fix
--00088344 803f023c 00a08244 
eeObj.WriteMem32(0x0025619c,0x3c023fab)


--black borders fix by nemesis2000
eeObj.WriteMem32(0x001f4a38,0x3c020000)
eeObj.WriteMem32(0x001f49c8,0x3c030000)
eeObj.WriteMem32(0x001f4ab8,0x3c020000)

--FMV's fix by nemesis2000
eeObj.WriteMem32(0x002110ac,0x24020188)
eeObj.WriteMem32(0x002110b0,0x14480003)
eeObj.WriteMem32(0x002110b4,0x00000000)
eeObj.WriteMem32(0x002110b8,0x240801c0)
eeObj.WriteMem32(0x002110bc,0x24060000)
eeObj.WriteMem32(0x002110c0,0x10200006)
eeObj.WriteMem32(0x002110c4,0xe7b40000)
eeObj.WriteMem32(0x002110c8,0x44870800)
eeObj.WriteMem32(0x002110cc,0x44850000)
eeObj.WriteMem32(0x002110d0,0x46800920)
eeObj.WriteMem32(0x002110d4,0x10000005)
eeObj.WriteMem32(0x002110d8,0x468000a0)
eeObj.WriteMem32(0x002110dc,0x44850800)
eeObj.WriteMem32(0x002110e0,0x44870000)
eeObj.WriteMem32(0x002110e4,0x46800920)
eeObj.WriteMem32(0x002110e8,0x468000a0)
eeObj.WriteMem32(0x002110ec,0x0106082a)
eeObj.WriteMem32(0x002110f0,0x10200006)
eeObj.WriteMem32(0x002110f8,0x44880800)
eeObj.WriteMem32(0x002110fc,0x44860000)
eeObj.WriteMem32(0x00211100,0x46800960)
eeObj.WriteMem32(0x00211104,0x10000005)
eeObj.WriteMem32(0x00211108,0x468000e0)
eeObj.WriteMem32(0x0021110c,0x44860800)
eeObj.WriteMem32(0x00211110,0x44880000)
eeObj.WriteMem32(0x00211114,0x46800960)
eeObj.WriteMem32(0x00211118,0x468000e0)
eeObj.WriteMem32(0x0021111c,0x8c8301e8)
eeObj.WriteMem32(0x00211120,0x46021043)

eeObj.WriteMem32(0x0010cedc,0x3c050000)
eeObj.WriteMem32(0x0010cee4,0x3c060050)
eeObj.WriteMem32(0x0010ceec,0x3c070001)

--480p (progressive scan)
eeObj.WriteMem32(0x0010cedc,0x3c050000)
eeObj.WriteMem32(0x0010cee4,0x3c060050)
eeObj.WriteMem32(0x0010ceec,0x3c070001)
eeObj.WriteMem32(0x0010d1ac,0x3c090010)
end

emuObj.AddVsyncHook(widescreen)