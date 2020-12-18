apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen correction by nemesis2000 (pnach by Little Giant)
--gameplay
eeObj.WriteMem32(0x0010285c,0x3c013f40)
eeObj.WriteMem32(0x00102860,0x44810000)
eeObj.WriteMem32(0x00102868,0x4600c602)
end

emuObj.AddVsyncHook(widescreen)