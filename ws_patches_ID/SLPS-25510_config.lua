apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Tekken 5 [NTSC-J] (SLPS-25510)
--comment=Widescreen hack by nemesis2000 (pnach by nemesis2000)

eeObj.WriteMem32(0x00332B78,0x3c013f40)

--applies both fov+ only for widescreen mode
eeObj.WriteMem32(0x00332BA8,0x3c010015)
eeObj.WriteMem32(0x00332BAC,0xC62DD510)
eeObj.WriteMem32(0x00332BCC,0x46016b42)
eeObj.WriteMem32(0x00332BD0,0x46010843)
eeObj.WriteMem32(0x00332BE8,0x460d1083)
eeObj.WriteMem32(0x00332BEC,0x460d0843)


--effects fix
eeObj.WriteMem32(0x0025A13C,0x46161083)
eeObj.WriteMem32(0x0025A190,0x46160843)
eeObj.WriteMem32(0x0025A1E8,0x46160843)
eeObj.WriteMem32(0x0025A240,0x46160843)

--render fix
eeObj.WriteMem32(0x00224AAC,0x3c013f2b)
eeObj.WriteMem32(0x00224ABC,0x44810000)
eeObj.WriteMem32(0x00224AC0,0x46006302)
end

emuObj.AddVsyncHook(widescreen)