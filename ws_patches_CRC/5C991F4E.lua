apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by nemesis2000 (pnach by nemesis2000)

--widescreen
eeObj.WriteMem32(0x00114dd0,0x3c013f40)
eeObj.WriteMem32(0x00114dd4,0x4481c000)
eeObj.WriteMem32(0x00114de0,0x46181082)

--render fix
eeObj.WriteMem32(0x001146F4,0x240302ab)
eeObj.WriteMem32(0x0054E478,0x44fa0000)

--black borders fix
eeObj.WriteMem32(0x00113450,0x3c010000)
end

emuObj.AddVsyncHook(widescreen)