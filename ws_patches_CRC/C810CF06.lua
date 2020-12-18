apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Simple 2000 Series Vol. 105 - The Maid Fuku to Kikanjuu [NTSC-J] (SLPS-20464)
--comment=Widescreen Hack

eeObj.WriteMem32(0x001c53ac,0x3c013f40)
eeObj.WriteMem32(0x001c53b0,0x44810000)
eeObj.WriteMem32(0x001c53b8,0x4600c602)
end

emuObj.AddVsyncHook(widescreen)