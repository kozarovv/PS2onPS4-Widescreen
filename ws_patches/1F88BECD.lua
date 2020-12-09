apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack by nemesis2000
-- Ported to PAL (elhecht)

eeObj.WriteMem32(0x00340bb0,0x3c013f40)

--applies both fov+ only for widescreen mode
eeObj.WriteMem32(0x00340be0,0x3c010015)
eeObj.WriteMem32(0x00340be4,0xc62db7f4)
eeObj.WriteMem32(0x00340c04,0x46016b42)
eeObj.WriteMem32(0x00340c08,0x46010843)
eeObj.WriteMem32(0x00340c20,0x460d1083)
eeObj.WriteMem32(0x00340c24,0x460d0843)

--render fix
eeObj.WriteMem32(0x0022db84,0x3c013f2b)
eeObj.WriteMem32(0x0022db94,0x44810000)
eeObj.WriteMem32(0x0022db98,0x46006302)
end

emuObj.AddVsyncHook(widescreen)