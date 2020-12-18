apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Neo Contra [NTSC-J] (SLPM-65752)
--comment=Widescreen hack
eeObj.WriteMem32(0x00359ed4,0x3c013f40)
eeObj.WriteMem32(0x00359ed8,0x44810000)
eeObj.WriteMem32(0x00359ee0,0x4600c602)
end

emuObj.AddVsyncHook(widescreen)