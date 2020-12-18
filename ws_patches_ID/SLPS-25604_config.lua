apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Ar tonelico: Melody of Elemia (J) (SLPS-25604)
--comment=Widescreen hack by nemesis2000 (pnach by Arapapa)

--3D scenes
eeObj.WriteMem32(0x003424B4,0x3c013f40)
eeObj.WriteMem32(0x003424B8,0x44810000)
eeObj.WriteMem32(0x003424C0,0x4600c602)

--battle's fix
eeObj.WriteMem32(0x00A77B74,0x44400000)
eeObj.WriteMem32(0x00A77B7C,0xc4400000)

--2D scenes
eeObj.WriteMem32(0x001A24E8,0x3c014440)
eeObj.WriteMem32(0x001A24EC,0x44810800)
eeObj.WriteMem32(0x001A24F0,0x46010042)
eeObj.WriteMem32(0x001A24F4,0xe6810090)
eeObj.WriteMem32(0x001A24F8,0x3c014480)
eeObj.WriteMem32(0x001A24FC,0x44810800)
end

emuObj.AddVsyncHook(widescreen)