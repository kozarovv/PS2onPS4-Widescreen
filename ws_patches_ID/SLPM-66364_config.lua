apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Pro Yakyuu Spirits 3 (SLPM_663.64) (NTSC-J)
--comment=16:9 widescreen hack by 99skull (pnach by Arapapa)
--comment=Search values are apply to other series games

--00000000 41b81946 803f083c
eeObj.WriteMem32(0x001459a8,0x3C013F2A)

--00000000 42100146 07000046
eeObj.WriteMem32(0x001459e0,0x44819800)

--02100046 42081546
eeObj.WriteMem32(0x001459ec,0x46009802)

--803f053c 82c80146 
eeObj.WriteMem32(0x00145b88,0x3C053FAA)
end

emuObj.AddVsyncHook(widescreen)