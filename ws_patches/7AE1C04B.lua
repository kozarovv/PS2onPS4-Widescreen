apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--16:9
eeObj.WriteMem32(0x007afd9c,0x3fe38e38)

--partial HUD fix by nemesis2000
eeObj.WriteMem32(0x00106a68,0x3c043f40)
eeObj.WriteMem32(0x00106a70,0x00701821)
eeObj.WriteMem32(0x00106a74,0x24637dac)
eeObj.WriteMem32(0x00106a7c,0x00000000)
eeObj.WriteMem32(0x00106a80,0x24630004)
eeObj.WriteMem32(0x00106a84,0x3c043f80)

--FMV's fix by nemesis2000
eeObj.WriteMem32(0x0010ac10,0x1462000a)
eeObj.WriteMem32(0x0010ac18,0x3c02c294)
eeObj.WriteMem32(0x0010ac1c,0x10000008)
eeObj.WriteMem32(0x0010ac20,0x00000000)
eeObj.WriteMem32(0x0010ac3c,0x3c02c1a8)
eeObj.WriteMem32(0x0010ac50,0x00000000)

--Font fix by nemesis2000 (causes spacing errors)
eeObj.WriteMem32(0x0039ce64,0x00118903)
eeObj.WriteMem32(0x0039ce68,0x02338818)
eeObj.WriteMem32(0x0039ce70,0x8E93001c)
eeObj.WriteMem32(0x0039cf18,0x82970003)
eeObj.WriteMem32(0x0039d064,0x24130015)

eeObj.WriteMem32(0x0039f2ec,0x2415000c)
eeObj.WriteMem32(0x0039f304,0x3c0241a8)
eeObj.WriteMem32(0x0039f330,0x01154018)
eeObj.WriteMem32(0x0039f334,0x00084103)
eeObj.WriteMem32(0x0039f338,0x0100a82d)

--480p by asmodean
eeObj.WriteMem32(0x00197520,0x3c040010)
eeObj.WriteMem32(0x00197524,0x348426dc)
eeObj.WriteMem32(0x00197528,0x8c820000)
eeObj.WriteMem32(0x0019752c,0x38420001)
eeObj.WriteMem32(0x00197530,0xac820000)
eeObj.WriteMem32(0x00197534,0x000217fc)
eeObj.WriteMem32(0x00197538,0x000217ff)
eeObj.WriteMem32(0x0019753c,0x0000000f)
eeObj.WriteMem32(0x00197540,0x42000038)
eeObj.WriteMem32(0x00197544,0x03e00008)
eeObj.WriteMem32(0x00197548,0x00000000)
eeObj.WriteMem32(0x0019754c,0x00000001)

eeObj.WriteMem32(0x004fc01c,0x24110000)
eeObj.WriteMem32(0x004fc020,0x24120050)
eeObj.WriteMem32(0x004fc024,0x24020001)
eeObj.WriteMem32(0x004fc028,0x10820031)
eeObj.WriteMem32(0x004fc02c,0x24130001)
end

emuObj.AddVsyncHook(widescreen)