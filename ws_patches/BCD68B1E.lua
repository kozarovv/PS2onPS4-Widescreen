apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Shin Megami Tensei: Persona 3 (K) (SCKA_20099)
--comment=Widescreen hack by nemesis2000 and devina (pnach by Arapapa)

--16:9
eeObj.WriteMem32(0x007afa1c,0x3fe38e38)

--partial HUD fix by nemesis2000
eeObj.WriteMem32(0x00106958,0x3c043f40)
eeObj.WriteMem32(0x00106960,0x00701821)
eeObj.WriteMem32(0x00106964,0x24637d2c)
eeObj.WriteMem32(0x0010696c,0x00000000)
eeObj.WriteMem32(0x00106970,0x24630004)
eeObj.WriteMem32(0x00106974,0x3c043f80)

--FMV's fix by nemesis2000
eeObj.WriteMem32(0x0010aac0,0x1462000a)
eeObj.WriteMem32(0x0010aac8,0x3c02c294)
eeObj.WriteMem32(0x0010aacc,0x10000008)
eeObj.WriteMem32(0x0010aad0,0x00000000)
eeObj.WriteMem32(0x0010aaec,0x3c02c1a8)
eeObj.WriteMem32(0x0010ab00,0x00000000)

--persona art fix by devina and nemesis2000
--003f033c 3001a3af 3401a0af 7001a0af 803f023c
eeObj.WriteMem32(0x0011455c,0x3c033ec0)
eeObj.WriteMem32(0x0011456c,0x3c023f90)

--Font fix by nemesis2000 (causes spacing errors)
--eeObj.WriteMem32(0x0039ce64,0x00118903)
--eeObj.WriteMem32(0x0039ce68,0x02338818)
--eeObj.WriteMem32(0x0039ce70,0x8E93001c)
--eeObj.WriteMem32(0x0039cf18,0x82970003)
--eeObj.WriteMem32(0x0039d064,0x24130015)

--eeObj.WriteMem32(0x0039f2ec,0x2415000c)
--eeObj.WriteMem32(0x0039f304,0x3c0241a8)
--eeObj.WriteMem32(0x0039f330,0x01154018)
--eeObj.WriteMem32(0x0039f334,0x00084103)
--eeObj.WriteMem32(0x0039f338,0x0100a82d)
end

emuObj.AddVsyncHook(widescreen)