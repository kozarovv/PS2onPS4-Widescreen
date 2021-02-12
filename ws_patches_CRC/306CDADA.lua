apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by nemesis2000 (pnach by nemesis2000)

--gameplay
eeObj.WriteMem32(0x006ec304,0x3c013f40)
eeObj.WriteMem32(0x006ec308,0x44810000)
eeObj.WriteMem32(0x006ec310,0x4600c602)

--FMV's fix
eeObj.WriteMem32(0x00452e30,0x24057300)
eeObj.WriteMem32(0x00452e34,0x24062000)
eeObj.WriteMem32(0x00452e3c,0x24071b00)
end

emuObj.AddVsyncHook(widescreen)