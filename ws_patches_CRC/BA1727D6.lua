apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Backyard Baseball (U)(SLUS-20865)
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

--Batting View Fov
--aa3f023c 00088344 93a94234
eeObj.WriteMem32(0x0013c23c,0x3c023fe3)
eeObj.WriteMem32(0x0013c244,0x34428b48)

--Field View Fov
--aa3f023c 00088344 93a94234
eeObj.WriteMem32(0x0013bdf8,0x3c023fe3)
eeObj.WriteMem32(0x0013be00,0x34428b48)

--Announce
eeObj.WriteMem32(0x0013b410,0x3c023fe3)
eeObj.WriteMem32(0x0013b418,0x34428b48)

--Replay
eeObj.WriteMem32(0x0013a1e0,0x3c023fe3)
eeObj.WriteMem32(0x0013a1e8,0x34428b48)


--Etc (Replay Batting View, Intro Playgame and etc....)
eeObj.WriteMem32(0x00139274,0x3c023fe3)
eeObj.WriteMem32(0x0013927c,0x34428b48)
eeObj.WriteMem32(0x0013a340,0x3c023fe3)
eeObj.WriteMem32(0x0013a348,0x34428b48)
eeObj.WriteMem32(0x0013a400,0x3c023fe3)
eeObj.WriteMem32(0x0013a408,0x34428b48)
eeObj.WriteMem32(0x0013a520,0x3c023fe3)
eeObj.WriteMem32(0x0013a528,0x34428b48)
eeObj.WriteMem32(0x0013a5b4,0x3c023fe3)
eeObj.WriteMem32(0x0013a5bc,0x34428b48)
eeObj.WriteMem32(0x0013a6b0,0x3c023fe3)
eeObj.WriteMem32(0x0013a6b8,0x34428b48)
eeObj.WriteMem32(0x0013a744,0x3c023fe3)
eeObj.WriteMem32(0x0013a74c,0x34428b48)
eeObj.WriteMem32(0x0013a97c,0x3c023fe3)
eeObj.WriteMem32(0x0013a984,0x34428b48)
eeObj.WriteMem32(0x0013abfc,0x3c023fe3)
eeObj.WriteMem32(0x0013ac04,0x34428b48)
eeObj.WriteMem32(0x0013ae84,0x3c023fe3)
eeObj.WriteMem32(0x0013ae8c,0x34428b48)
eeObj.WriteMem32(0x0013afb8,0x3c023fe3)
eeObj.WriteMem32(0x0013afc0,0x34428b48)
eeObj.WriteMem32(0x0013b244,0x3c023fe3)
eeObj.WriteMem32(0x0013b24c,0x34428b48)
eeObj.WriteMem32(0x0013b51c,0x3c023fe3)
eeObj.WriteMem32(0x0013b524,0x34428b48)
eeObj.WriteMem32(0x0013b5e8,0x3c023fe3)
eeObj.WriteMem32(0x0013b5f0,0x34428b48)
eeObj.WriteMem32(0x0013b7ac,0x3c023fe3)
eeObj.WriteMem32(0x0013b7b4,0x34428b48)
eeObj.WriteMem32(0x0013baec,0x3c023fe3)
eeObj.WriteMem32(0x0013baf4,0x34428b48)
eeObj.WriteMem32(0x0013bb48,0x3c023fe3)
eeObj.WriteMem32(0x0013bb50,0x34428b48)
eeObj.WriteMem32(0x0013bfa0,0x3c023fe3)
eeObj.WriteMem32(0x0013bfa8,0x34428b48)
eeObj.WriteMem32(0x0013c104,0x3c023fe3)
eeObj.WriteMem32(0x0013c10c,0x34428b48)
eeObj.WriteMem32(0x0013c4f8,0x3c023fe3)
eeObj.WriteMem32(0x0013c500,0x34428b48)



----------------------------------------------------------
--xxx 
--eeObj.WriteMem32(0x0013c400,0x3c023fe3)
--eeObj.WriteMem32(0x0013c408,0x34428b48)
--eeObj.WriteMem32(0x0013b6d4,0x3c023fe3)
--eeObj.WriteMem32(0x0013b6dc,0x34428b48)
end

emuObj.AddVsyncHook(widescreen)