apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by nemesis2000 (pnach by nemesis2000)

--gameplay
eeObj.WriteMem32(0x005161c0,0x46010082)
eeObj.WriteMem32(0x005161c4,0xe7a20058)

--cutscenes
eeObj.WriteMem32(0x00516590,0x46010082)
eeObj.WriteMem32(0x00516594,0xe7a20068)

--unknown

--val 1
--eeObj.WriteMem32(0x005177a8,0x46010082)
--eeObj.WriteMem32(0x005177ac,0xe7a20048)

--val 2
--eeObj.WriteMem32(0x00517580,0x46010082)
--eeObj.WriteMem32(0x00517584,0xe7a20030)

--val 3
--eeObj.WriteMem32(0x005176d4,0x46010082)
--eeObj.WriteMem32(0x005176d8,0xe7a20040)

--val 4
--eeObj.WriteMem32(0x0051760c,0x46010082)
--eeObj.WriteMem32(0x00517610,0xe7a20038)

--val 5
--eeObj.WriteMem32(0x005167b4,0x46010082)
--eeObj.WriteMem32(0x005167b8,0xe7a20048)

--------------------------------------------------------/

--old
--eeObj.WriteMem32(0x006d4bec,0x3c013f40)
--eeObj.WriteMem32(0x006d4c20,0x46000003)
--eeObj.WriteMem32(0x006d4c24,0x46020003)
--eeObj.WriteMem32(0x006d4c28,0xe6010070)
--eeObj.WriteMem32(0x006d4c2c,0x10800003)
--eeObj.WriteMem32(0x006d4c30,0xe6000074)
--eeObj.WriteMem32(0x006d4c34,0x0c1b5aa0)
--eeObj.WriteMem32(0x0051ab64,0x3c023faa)
end

emuObj.AddVsyncHook(widescreen)