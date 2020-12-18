apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Shin Megami Tensei: Devil Summoner - Raidou Kuzunoha vs the Soulless Army (NTSC-U)
--comment=Widescreen pnach by El_Patas (Only works for 3D characters, not for prerendered backgrounds)

eeObj.WriteMem32(0x003AD464,0x3FC6D3A0)
eeObj.WriteMem32(0x003AD814,0x3FC6D3A0)
end

emuObj.AddVsyncHook(widescreen)