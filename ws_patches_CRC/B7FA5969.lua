apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Kengo 2 (NTSC-J)

--Gameplay 16:9
eeObj.WriteMem32(0x001ac584,0x3C013F40)

--Cutscenes in movement fix
eeObj.WriteMem32(0x001ad37c,0x3C013F40)

--Removes black box cutscenes texts (Optional)
--eeObj.WriteMem32(0x001b3a78,0x3C013D00)
end

emuObj.AddVsyncHook(widescreen)