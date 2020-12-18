apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by nemesis2000 (pnach by nemesis2000 )
eeObj.WriteMem32(0x002D7530,0x3F28F5C3)
eeObj.WriteMem32(0x00189d84,0x3c034455)

--FMV's fix
eeObj.WriteMem32(0x00281118,0x24100004)
eeObj.WriteMem32(0x0028111c,0x24030004)
eeObj.WriteMem32(0x002810fc,0x340692b0)
--eeObj.WriteMem32(0x00281104,0x34c68c80)
eeObj.WriteMem32(0x002810cc,0x3c026d50)
--eeObj.WriteMem32(0x002810d0,0x34467380)

--Lens Flare's fix
eeObj.WriteMem32(0x0018B6E0,0x3C024010)

eeObj.WriteMem32(0x0018B75C,0x3C0243A8)

eeObj.WriteMem32(0x0018C3B4,0x3C024010)

eeObj.WriteMem32(0x0018C44C,0x3C0243A8)
eeObj.WriteMem32(0x0018C4C8,0x3C0243A8)
eeObj.WriteMem32(0x0018CA94,0x3C0243A8)
eeObj.WriteMem32(0x0018CB28,0x3C0243A8)
eeObj.WriteMem32(0x0018CBAC,0x3C0243A8)
eeObj.WriteMem32(0x0018CC50,0x3C0243A8)
eeObj.WriteMem32(0x0018CFE4,0x3C0243A8)
eeObj.WriteMem32(0x0018D078,0x3C0243A8)
eeObj.WriteMem32(0x0018D10C,0x3C0243A8)
eeObj.WriteMem32(0x0018D1A0,0x3C0243A8)
eeObj.WriteMem32(0x0018D394,0x3C0243A8)
eeObj.WriteMem32(0x0018D400,0x3C0243A8)
eeObj.WriteMem32(0x0018D54C,0x3C0243A8)
eeObj.WriteMem32(0x0018D5B8,0x3C0243A8)

--Loading scene (Foot Print)
--403f023c 00088244 c000a0c7
eeObj.WriteMem32(0x00291734,0x3c023f10)

--Item & Equipment Y-Fov
--8042023c 00008244 00000000 02001446
eeObj.WriteMem32(0x001eac40,0x3c0242aa)
eeObj.WriteMem32(0x001eac44,0x3442aaab)
eeObj.WriteMem32(0x001eac48,0x44820000)

eeObj.WriteMem32(0x001eafa0,0x3c0242aa)
eeObj.WriteMem32(0x001eafa4,0x3442aaab)
eeObj.WriteMem32(0x001eafa8,0x44820000)

--Item Zoom
--993e033c 9a996334 00008344
eeObj.WriteMem32(0x001db4dc,0x3c033daa)
eeObj.WriteMem32(0x001db4e0,0x3463aaab)
eeObj.WriteMem32(0x001db4dc,0x3c033daa)
eeObj.WriteMem32(0x001db4e0,0x3463aaab)

--Equipment Zoom
--663f023c 66664234 00088244
eeObj.WriteMem32(0x001db998,0x3c023f2c)
eeObj.WriteMem32(0x001db99c,0x3442cccd)
end

emuObj.AddVsyncHook(widescreen)