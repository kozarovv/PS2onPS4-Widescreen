apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Erementar Gerad [NTSC-J] (SLPM-62623)
--comment=Widescreen Hack

--story
eeObj.WriteMem32(0x004788F4,0x3f400000)

--battle 
eeObj.WriteMem32(0x004783B4,0x3f400000)
eeObj.WriteMem32(0x00478A44,0x3f400000)
end

emuObj.AddVsyncHook(widescreen)