apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Forbidden Siren SCES_523.29 (PAL-ITA)
--comment=Widescreen Hack converted from NTSC-U to PAL by Machiavel Dhy'v
eeObj.WriteMem32(0x002018a8,0x3c023f40)

--FMV's fix by nemesis2000 - converted to PAL by Machiavel Dhy'v
eeObj.WriteMem32(0x001fba78,0x3c027630)
eeObj.WriteMem32(0x001fbac4,0x34028970)
end

emuObj.AddVsyncHook(widescreen)