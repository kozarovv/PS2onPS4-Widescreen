apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by nemesis2000 (pnach by nemesis2000)

--gameplay
eeObj.WriteMem32(0x0014e478,0x3c023f19)
eeObj.WriteMem32(0x0014e47c,0x3448999a)

--render fix
eeObj.WriteMem32(0x0024fc14,0x0c040b90)
eeObj.WriteMem32(0x0024fc18,0x00000000)
eeObj.WriteMem32(0x0024fc1c,0x4615a800)
eeObj.WriteMem32(0x0024fc20,0x3c0342a0)
eeObj.WriteMem32(0x0024fc24,0x3c010075)
eeObj.WriteMem32(0x0024fc28,0x8c242ec0)
eeObj.WriteMem32(0x0024fc2c,0x44830800)
eeObj.WriteMem32(0x0024fc30,0x3c024220)
eeObj.WriteMem32(0x0024fc34,0x46000803)
eeObj.WriteMem32(0x0024fc38,0x3c033f00)
eeObj.WriteMem32(0x0024fc3c,0x44822000)
eeObj.WriteMem32(0x0024fc40,0x44831800)
eeObj.WriteMem32(0x0024fc44,0x3c033f30)
eeObj.WriteMem32(0x0024fc48,0x46030042)
eeObj.WriteMem32(0x0024fc4c,0xe4810024)
eeObj.WriteMem32(0x0024fc50,0x44830800)
eeObj.WriteMem32(0x0024fc54,0x46010042)
eeObj.WriteMem32(0x0024fc58,0x4604a0c0)
eeObj.WriteMem32(0x0024fc5c,0x8c222ec0)
eeObj.WriteMem32(0x0024fc60,0x4604a081)
eeObj.WriteMem32(0x0024fc64,0xe4810010)
eeObj.WriteMem32(0x0024fc68,0x3c02c000)
eeObj.WriteMem32(0x0024fc6c,0x44820800)
eeObj.WriteMem32(0x0024fc70,0x3c033f80)
eeObj.WriteMem32(0x0024fc74,0x4604a002)
eeObj.WriteMem32(0x0024fc78,0x8c222ec0)
eeObj.WriteMem32(0x0024fc7c,0x46000802)
eeObj.WriteMem32(0x0024fc80,0x46021843)
eeObj.WriteMem32(0x0024fc84,0xe4410038)
eeObj.WriteMem32(0x0024fc88,0x8c222ec0)
eeObj.WriteMem32(0x0024fc8c,0x46020003)
eeObj.WriteMem32(0x0024fc90,0xe4400048)
end

emuObj.AddVsyncHook(widescreen)