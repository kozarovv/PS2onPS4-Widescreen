apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=WinBack 2 - Project Poseidon (NTSC-U)
--comment=Widescreen hack by ElHecht

-- 16:9
eeObj.WriteMem32(0x002e6ff0,0x3c013f40)
eeObj.WriteMem32(0x002e6ff4,0x4481f000)
eeObj.WriteMem32(0x002e6ffc,0x461e0003)
end

emuObj.AddVsyncHook(widescreen)