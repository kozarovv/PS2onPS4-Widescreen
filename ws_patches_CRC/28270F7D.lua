apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by nemesis2000 (pnach by nemesis2000)

--gameplay
eeObj.WriteMem32(0x006e70f4,0x23c013f4)
eeObj.WriteMem32(0x006e70f8,0x44810000)
eeObj.WriteMem32(0x006e7100,0x4600c602)

--FMV's fix
eeObj.WriteMem32(0x004511d0,0x24057300)
eeObj.WriteMem32(0x004511d4,0x24062000)
eeObj.WriteMem32(0x004511dc,0x24071b00)
end

emuObj.AddVsyncHook(widescreen)