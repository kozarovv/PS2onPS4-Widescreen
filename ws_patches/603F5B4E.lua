apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by Arapapa

--Notice....Use PCSX2 4600 version.  If you use pcsx2 5xxx version, will be missing a little 3d graphics.
--copy in "cheats" folder it and check a "Enable Cheats"

-- 16:9 (0000803F 6666E63E 6666E63F)
eeObj.WriteMem32(0x002CFAA0,0x3F400000)
end

emuObj.AddVsyncHook(widescreen)