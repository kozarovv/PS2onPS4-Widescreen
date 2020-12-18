apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Mana Khemia 2: Fall of Alchemy [NTSC-J](SLPM-55005)
--comment=Widescreen hack by nemesis2000 (pnach by nemesis2000)

--3D scenes
eeObj.WriteMem32(0x005e1594,0x3c013f40)
eeObj.WriteMem32(0x005e1598,0x44810000)
eeObj.WriteMem32(0x005e15a0,0x4600c602)

--battle's fix
eeObj.WriteMem32(0x00c80d44,0x44400000)
eeObj.WriteMem32(0x00c80d4c,0xc4400000)
end

emuObj.AddVsyncHook(widescreen)