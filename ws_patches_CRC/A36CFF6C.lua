apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Castlevania: Lament of Innocence [NTSC-J] (SLPM-65444)
--comment==Widescreen hack by nemesis2000 (pnach by nemesis2000)

--gameplay
eeObj.WriteMem32(0x006e7464,0x3c013f40)
eeObj.WriteMem32(0x006e7468,0x44810000)
eeObj.WriteMem32(0x006e7470,0x4600c602)

--FMV's fix
eeObj.WriteMem32(0x004511d8,0x24057300)
eeObj.WriteMem32(0x004511dc,0x24062000)
eeObj.WriteMem32(0x004511e4,0x24071b00)
end

emuObj.AddVsyncHook(widescreen)