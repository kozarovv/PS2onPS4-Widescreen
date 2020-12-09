apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Digimon World X [NTSC-J] (SLPS-25453)
--comment=Widescreen Hack by ElHecht
eeObj.WriteMem32(0x001b8450,0x3c013f40)
eeObj.WriteMem32(0x001b845c,0x4481f000)
eeObj.WriteMem32(0x001b84b8,0x461ebb03)
eeObj.WriteMem32(0x001b84bc,0x46006347)
end

emuObj.AddVsyncHook(widescreen)