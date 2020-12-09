apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Simple 2000 Series Vol. 114 - The Onna Okappichi Torimonochou - Oharuchan Go Go Go! [NTSC-J] (SLPS-20489)
--comment=Widescreen Hack

eeObj.WriteMem32(0x001af3ec,0x3c013f40)
eeObj.WriteMem32(0x001af3f0,0x44810000)
eeObj.WriteMem32(0x001af3f8,0x4600c602)
end

emuObj.AddVsyncHook(widescreen)